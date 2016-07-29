FILE_OUTPUT = @ARG1

set terminal aqua

reset

set dashtype 1 (1,4)
set dashtype 2 (5,5)

set size 1,0.8
set ytics nomirror
set y2tics 
set xlabel "{/Symbol-Oblique a}" font "Helvetica, 30"
set ylabel "System throughput (Mbit/s)" font "Helvetica, 30"
set y2label "Fairness index" font "Helvetica, 30"
set xrange [0:1]
set yrange [0:55]

set key at 1, 10
set key font "Helvetica, 20"

set tics font "Helvetica,25"
plot "chgtopology.dat" using 1:2 title "System throughput" w lp lt 1 lw 4 pt 2 ps 2
replot "chgtopology.dat" using 1:3 title "Fairness index" w lp lt 1 lw 4 pt 6 ps 2 axes x1y2
replot


if(FILE_OUTPUT){
set terminal postscript enhanced monochrome
set output ARG2.".eps"
replot
}

set terminal aqua