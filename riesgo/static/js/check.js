
$(".si input[type='radio']").click(function(){
		enc_id=$(this).attr('rowenc');
		var_id=$(this).attr('rowid');
		estado=$(this).attr('checked');
		//nuevoValor=$("#input-puntaje"+var_id).val();
		if(estado=="checked"){
			$.post("encuesta_action.php",{inser_enc_var:true,id_enc:enc_id,id_var:var_id},function(data){
				if(data){
					$("#user-list .alias[rowid='"+var_id+"']").attr('disabled',false);
					$("#user-list .alias[rowid='"+var_id+"']").focus();
					$("#total-puntaje").val(parseInt($("#total-puntaje").val())+parseInt(nuevoValor));
				}else{
					alert("Ha ocurrido un error al insertar la variable en la encuesta.\nIntente actualizar la pagina y volver a intentarlo");
				}
			});
		}else{
			$.post("encuesta_action.php",{del_enc_var:true,id_enc:enc_id,id_var:var_id},function(data){
				if(data){
					$("#user-list .alias[rowid='"+var_id+"']").attr('disabled',true);
					$("#user-list .alias[rowid='"+var_id+"']").val("");
					$("#total-puntaje").val(parseInt($("#total-puntaje").val())-parseInt(nuevoValor));
				}else{
					alert("Ha ocurrido un error al eliminar la variable de la encuesta.\nIntente actualizar la pagina y volver a intentarlo");
				}
			});
		}
	})