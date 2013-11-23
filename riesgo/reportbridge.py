import settings
import socket, pickle

class BridgeClient:
    def __init__(self, f):
        self._sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self._sock.connect(("127.0.0.1",5000))
        packet = pickle.dumps(f)
        self._sock.send(str(len(packet))+"\n"+packet)
        size = int(self._readline())
        self.raw = self._readbytes(size)
        self._sock.close()

    def get_result(self):
        return (self.raw)

    def _readline(self):
        chars = []
        while 1:
            try:
                char = self._sock.recv(1)
            except:
                char = ''
            if char == '\n':
                break
            chars.append(char)
        return "".join(chars)
    
    def _readbytes(self, n):
        chunks = []
    
        while n > 0:
            try:
                chunk = self._sock.recv(n)
            except:
                chunk = None
            if not chunk:
                raise ServerError("Failed to read response from server")
            chunks.append(chunk)
            n -= len(chunk)
        return "".join(chunks)

def get_report(report, params):
    return report_client.BridgeClient({"report": settings.REPORT_DIR + report,
                                       "params": params,
                                       }).get_result()