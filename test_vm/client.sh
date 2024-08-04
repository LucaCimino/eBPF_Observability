#!/bin/bash

N=1000
SUM=0

for i in $(seq 1 $N); do
	START=$(($(date +%s%N)/1000000));
       	curl localhost:80 > /dev/null 2>&1;
	END=$(($(date +%s%N)/1000000));
	#echo " - Richiesta $i = $(( $END - $START )) ms"
	SUM=$(( $SUM+$END-$START ));	
	sleep 0.0004;
done

echo "Tempo medio = $(( $SUM / $N )) ms"
