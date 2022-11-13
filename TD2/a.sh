git add ./dgemm/dgemm ./dotprod/dotprod ./reduc/reduc
git commit -m"Le fichier executable"

git add ./dgemm/gcc/-O1 ./dotprod/gcc/-O1 ./reduc/gcc/-O1
git commit -m"Mesures de performance de compilateur GCC avec flag -O1"

git add ./dgemm/gcc/-O2 ./dotprod/gcc/-O2 ./reduc/gcc/-O2
git commit -m"Mesures de performance de compilateur GCC avec flag -O2"

git add ./dgemm/gcc/-O3 ./dotprod/gcc/-O3 ./reduc/gcc/-O3
git commit -m"Mesures de performance de compilateur GCC avec flag -O3"



git add ./dgemm/clang/-O1 ./dotprod/clang/-O1 ./reduc/clang/-O1
git commit -m"Mesures de performance de compilateur CLANG avec flag -O1"

git add ./dgemm/clang/-O2 ./dotprod/clang/-O2 ./reduc/clang/-O2
git commit -m"Mesures de performance de compilateur CLANG avec flag -O2"

git add ./dgemm/clang/-O3 ./dotprod/clang/-O3 ./reduc/clang/-O3
git commit -m"Mesures de performance de compilateur CLANG avec flag -O3"



git add ./dgemm/icx/-O1 ./dotprod/icx/-O1 ./reduc/icx/-O1
git commit -m"Mesures de performance de compilateur ICX avec flag -O1"

git add ./dgemm/icx/-O2 ./dotprod/icx/-O2 ./reduc/icx/-O2
git commit -m"Mesures de performance de compilateur ICX avec flag -O2"

git add ./dgemm/icx/-O3 ./dotprod/icx/-O3 ./reduc/icx/-O3
git commit -m"Mesures de performance de compilateur ICX avec flag -O3"


git add ./dgemm/graphe/gcc1.png ./dgemm/graphe/gcc2.png ./dgemm/graphe/gcc3.png ./dotprod/graphe/gcc1.png ./dotprod/graphe/gcc2.png ./dotprod/graphe/gcc3.png ./reduc/graphe/gcc1.png ./reduc/graphe/gcc2.png ./reduc/graphe/gcc3.png
git commit -m"Comparaison entre les versions pour GCC"

git add ./dgemm/graphe/clang1.png ./dgemm/graphe/clang2.png ./dgemm/graphe/clang3.png ./dotprod/graphe/clang1.png ./dotprod/graphe/clang2.png ./dotprod/graphe/clang3.png ./reduc/graphe/clang1.png ./reduc/graphe/clang2.png ./reduc/graphe/clang3.png
git commit -m"Comparaison entre les versions pour CLANG"

git add ./dgemm/graphe/icx1.png ./dgemm/graphe/icx2.png ./dgemm/graphe/icx3.png ./dotprod/graphe/icx1.png ./dotprod/graphe/icx2.png ./dotprod/graphe/icx3.png ./reduc/graphe/icx1.png ./reduc/graphe/icx2.png ./reduc/graphe/icx3.png
git commit -m"Comparaison entre les versions pour ICX"

git add ./dgemm/graphe/gcc_flag.png ./dotprod/graphe/gcc_flag.png ./reduc/graphe/gcc_flag.png
git commit -m"Flags d'optimisation de GCC"

git add ./dgemm/graphe/clang_flag.png ./dotprod/graphe/clang_flag.png ./reduc/graphe/clang_flag.png
git commit -m"Flags d'optimisation de CLANG"

git add ./dgemm/graphe/icx_flag.png ./dotprod/graphe/icx_flag.png ./reduc/graphe/icx_flag.png
git commit -m"Flags d'optimisation de ICX"


git add ./dgemm/graphe/comp1.png ./dotprod/graphe/comp1.png ./reduc/graphe/comp1.png
git commit -m"Comparaison entre les compilateurs avec flag=-O1"

git add ./dgemm/graphe/comp2.png ./dotprod/graphe/comp2.png ./reduc/graphe/comp2.png
git commit -m"Comparaison entre les compilateurs avec flag=-O2"

git add ./dgemm/graphe/comp3.png ./dotprod/graphe/comp3.png ./reduc/graphe/comp3.png
git commit -m"Comparaison entre les compilateurs avec flag=-O3"

