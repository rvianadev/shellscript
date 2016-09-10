#!/bin/bash
#
#   Baixa as mensagens do dia do curso online de inglês do IDPH (http://iol.idph.com.br/)
#   Versao 2.1 - correção do link para download em 13/05/2016
#   Rodrigo Viana de Oliveira - roviol@gmail.com
#

ano=`date +%Y`
hoje=`date +%j`

for n in `seq -w 1 $hoje`
do
    arquivo=$ano$n
    if [ ! -e /home/rodrigo/Documentos/IOL/Mensagem\ do\ dia/$arquivo.mp3 ]
    then
        dir=`echo $arquivo | cut -c5-7`
        wget -c -t5 -P /home/rodrigo/Documentos/IOL/Mensagem\ do\ dia  http://www.aprendendoingles.com.br/mp3/$arquivo.mp3 &&
        echo "*** O arquivo $arquivo.mp3 foi baixado com êxito em `date`." >> /home/rodrigo/Documentos/IOL/Mensagem\ do\ dia/iol.log
    fi
done
