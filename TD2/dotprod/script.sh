#!/bin/bash

sudo cpupower -c 1 frequency-set -g performance 

comp="gcc clang icx"
oflag="-O1 -O2 -O3"

for c in $comp #pour chaque compliteur
do  
    for flag in $oflag #pour chaque flag
    do
        make clean
        make CC=$c OFLAGS=$flag > a.dat #comp et flag variable d'entre
        
        ex=$( cut -d" " -f9 a.dat) #recuperer le nom d'exe (dgemm,dotprod,reduc)
        chemin=$c/$flag #chemin de rept comp/flag 

        rm a.dat        
    
        if [ -d "./$chemin" ];then #si rept existe on le supprime
           rm -r -d $chemin
        fi
        
        mkdir -p $chemin #creation de rep
        mkdir -p gnuplot

        #On lance l'exe avec CPU num 1 et on sauvgard le res ds un fichier.csv
        taskset -c 1 ./$ex 100 100 > $chemin/$c$flag.csv

        line=$( wc -l < $chemin/$c$flag.csv ) #on recup nbr d lignes de fichier res

        for (( i=2; i<=line; i++ )) #pour chaque ligne sauf la 1ere
        do 
            #on recup le nom d version (title) de cette ligne et on supprime les espaces
            o=$( sed -n "$i"p ./$chemin/$c$flag.csv | cut -d";" -f1 | sed "s/^\ *//g")
            
            #extraire cette ligne + la 1er l et on sauvgarde les mesures de perf 
            sed -n '1p;'"$i"'p' ./$chemin/$c$flag.csv  > ./$chemin/"$c$flag"_"$o".csv
            sed -n 2p ./$chemin/"$c$flag"_"$o".csv | cut -d";" -f1,12 | sed "s/^\ *//g"  >> ./gnuplot/"$c$flag"_output.csv

            #extraire la val Mib/s pour la comparaison
            sed -n 2p ./$chemin/"$c$flag"_"$o".csv | cut -d";" -f12 | sed "s/^\ *//g"  >> ./gnuplot/"$c$flag"_flag.csv

        done
    done
done

#apres colecter les mesures de perf
for elem in $comp
do
    #fusioner Mib/s de chaque comp avec diff flags d'opt dans un seul fichier
    paste -d' ' ./gnuplot/$elem-O1_output.csv ./gnuplot/$elem-O2_flag.csv ./gnuplot/$elem-O3_flag.csv > ./gnuplot/$elem-flag.csv 

done

for f in $oflag
do
    #fusioner Mib/s de chaque flag d'opt avec diff comp dans un seul fichier
    paste -d' ' ./gnuplot/gcc"$f"_output.csv ./gnuplot/clang"$f"_flag.csv ./gnuplot/icx"$f"_flag.csv > ./gnuplot/$f.csv 

done

#apres le traitement des fichiers .csv
if [ -d "./graphe" ];then 
   rm -r -d graphe
fi
mkdir -p graphe #repertoire qui contient les graphes
#lancer script d gnuplot
gnuplot script.gp
rm -r -d gnuplot
