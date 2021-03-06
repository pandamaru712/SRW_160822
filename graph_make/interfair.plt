FILE_OUTPUT = @ARG1

set terminal aqua

reset

set size 1,0.8
#set ytics nomirror 
set xlabel "Index of STAs" font "Helvetica, 30"
set ylabel "Average transmission interval (ms)" font "Helvetica, 23"
set xrange [0:51]
set yrange [0:270]

set style fill solid
set boxwidth 0.5 relative
set mxtics 1 

unset key
#set key font "Helvetica, 20"

set tics font "Helvetica,25"
plot "interfair.dat" using 1:2 with boxes
replot


if(FILE_OUTPUT){
set terminal postscript enhanced color
set output ARG2.".eps"
replot
}

set terminal aqua