# OBHPC_PROJET
Mesures de performance dgemm / dotprod / reduc

Pour exécuter le script (script.sh), On donne [n] et [r] comme paramètres d'entrées.
Pour mon cas : 
 bash ./dgemm/script.sh 100 100
 bash ./dotprod/script.sh 100 100
 bash ./reduc/script.sh 100 100
 
 Le script de gnuplot (script.gp) contient les commandes qui permet de générer les graphes.
 On l'appel le script.gp à la fin de script.sh par la commande :
  gnuplot script.gp
