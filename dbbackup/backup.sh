#!/bin/bash
mysqldump --trigger -uroot -pMi#es064 scrg > scrg$(date +%Y-%m-%d).sql
