set xlabel "Version"
set ylabel "Data-rates units (Mib/s)"
set style data histograms
set style fill solid
set boxwidth 1
set terminal png size 1000,600

#les versions pour gcc clang icx
set title "Comparaison entre les versions pour GCC"

set output "./graphe/gcc1.png"
plot "./gnuplot/gcc-O1_output.csv" using 2:xtic(1) title "GCC -O1" lt rgb "blue"
set output "./graphe/gcc2.png"
plot "./gnuplot/gcc-O2_output.csv" using 2:xtic(1) title "GCC -O2" lt rgb "red"
set output "./graphe/gcc3.png"
plot "./gnuplot/gcc-O3_output.csv" using 2:xtic(1) title "GCC -O3" lt rgb "green"

set title "Comparaison entre les versions pour CLANG"

set output "./graphe/clang1.png"
plot "./gnuplot/clang-O1_output.csv" using 2:xtic(1) title "CLANG -O1" lt rgb "blue"
set output "./graphe/clang2.png"
plot "./gnuplot/clang-O2_output.csv" using 2:xtic(1) title "CLANG -O2" lt rgb "red"
set output "./graphe/clang3.png"
plot "./gnuplot/clang-O3_output.csv" using 2:xtic(1) title "CLANG -O3" lt rgb "green"

set title "Comparaison entre les versions pour ICX"

set output "./graphe/icx1.png"
plot "./gnuplot/icx-O1_output.csv" using 2:xtic(1) title "ICX -O1" lt rgb "blue"
set output "./graphe/icx2.png"
plot "./gnuplot/icx-O2_output.csv" using 2:xtic(1) title "ICX -O2" lt rgb "red"
set output "./graphe/icx3.png"
plot "./gnuplot/icx-O3_output.csv" using 2:xtic(1) title "ICX -O3" lt rgb "green"




#flags pour chaque compilateur
set title "Flags d'optimisation de GCC"
set output "./graphe/gcc_flag.png"
plot "./gnuplot/gcc-flag.csv" using 2:xtic(1) title "Flag -O1" lt rgb "blue",\
     "" using 3 title "Flag -O2" lt rgb "green",\
     "" using 4 title "Flag -O3" lt rgb "red"

set title "Flags d'optimisation de CLANG"
set output "./graphe/clang_flag.png"
plot "./gnuplot/clang-flag.csv" using 2:xtic(1) title "Flag -O1" lt rgb "blue",\
     "" using 3 title "Flag -O2" lt rgb "green",\
     "" using 4 title "Flag -O3" lt rgb "red"

set title "Flags d'optimisation de ICX"
set output "./graphe/icx_flag.png"
plot "./gnuplot/icx-flag.csv" using 2:xtic(1) title "Flag -O1" lt rgb "blue",\
     "" using 3 title "Flag -O2" lt rgb "green",\
     "" using 4 title "Flag -O3" lt rgb "red"


#comparaison gcc clang icx
set title "Comparaison entre les compilateurs avec flag=-O1"
set output "./graphe/comp1.png"
plot "./gnuplot/-O1.csv" using 2:xtic(1) title "GCC" lt rgb "blue",\
     "" using 3 title "CLANG" lt rgb "green",\
     "" using 4 title "ICX" lt rgb "red"

set title "Comparaison entre les compilateurs avec flag=-O2"
set output "./graphe/comp2.png"
plot "./gnuplot/-O2.csv" using 2:xtic(1) title "GCC" lt rgb "blue",\
     "" using 3 title "CLANG" lt rgb "green",\
     "" using 4 title "ICX" lt rgb "red"

set title "Comparaison entre les compilateurs avec flag=-O3"
set output "./graphe/comp3.png"
plot "./gnuplot/-O3.csv" using 2:xtic(1) title "GCC" lt rgb "blue",\
     "" using 3 title "CLANG" lt rgb "green",\
     "" using 4 title "ICX" lt rgb "red"
