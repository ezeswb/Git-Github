#!/bin/bash
#eze - eze.swb
#Pracica seccion 12
:<< 'nota'
Equipo-MaxGol-MinGol-Amarilla-Rojas

Real Madrid-50-15-14-2
Boca Juniors-37-22-19-5
Oporto-41-16-16-3
PSG-44-17-17-4
Bayern Munich-48-16-12-1
nota

e_max=""
maxg=0
e_min=""
ming=0
e_atar=""
aatar=0
e_rtar=""
rrtar=0

while read liga; do
	max=$( echo $liga | cut -d "-" -f 2 )
	min=$( echo $liga | cut -d "-" -f 3 )
	atar=$( echo $liga | cut -d "-" -f 4 )
	rtar=$( echo $liga | cut -d "-" -f 5 )
	
	if [ $max -gt $maxg ]; then
		maxg=$max
		e_max=$( echo $liga | cut -d "-" -f 1 )		
	fi
	if [ $min -gt $ming ]; then
		ming=$(( $min ))		
		e_min=$( echo $liga | cut -d "-" -f 1 )		
	fi
	if [ $atar -gt $aatar ]; then
		aatar=$(( $atar ))
		e_atar=$( echo $liga |cut -d "-" -f 1 )		
	fi
	if [ $rtar -gt $rrtar ]; then
		rrtar=$(( $rtar ))
		e_rtar=$( echo $liga | cut -d "-" -f 1 )		
	fi		

done</home/ezeu/1.-Scripst/4.-Seccion_12/ficheros/liga.txt
echo -e "Equipo Maximo Goles: '$e_max' = $maxg\n
Equipo Minimo Goles: '$e_min' = $ming\n
Equipo Maximo Amarillas: '$e_atar' = $aatar\n
Equipo Minimo Rojas: '$e_rtar' = $rrtar
" > Estadisticas.txt
