# OBHPC_PROJET
Mesures de performance dgemm / dotprod / reduc

Pour exécuter le script (script.sh), On donne [n] et [r] comme paramètres d'entrées.

Pour mon cas : 

 - $ bash ./dgemm/script.sh 100 100
 
 - $ bash ./dotprod/script.sh 100 100
 
 - $ bash ./reduc/script.sh 100 100
 
Le script de gnuplot (script.gp) contient les commandes qui permet de générer les graphes.
 
Le script.sh contient à la fin l'appel de script.gp par la commande :
 
 - $ gnuplot script.gp

Ce script shell (script.sh) génére les mesures de performance de compilateurs avec les flags d'optimisations à la fois : 

   c.a.d { GCC , CLANG , ICX } * { -O1 , -O2 , -O3 }
   
Les résultats de ces performances sont sauvegardés dans les dossiers gcc, clang, icx pour chaque programme.

Et les graphes générés sont dans le répertoire graphe en mode .png.
