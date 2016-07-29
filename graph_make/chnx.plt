FILE_OUTPUT = @ARG1

set terminal aqua

reset

set dashtype 1 (1,4)
set dashtype 2 (5,5)

set size 1,0.8
#set ytics nomirror
set xlabel "{/cmmi10a x}" font "Helvetica, 30"
set ylabel "Average transmission interval\nof STA 46, 47, 48, 49, 50 (ms)" font "Helvetica, 23"
set xrange [0:0.01]
set yrange [0:45]

unset key
#set key font "Helvetica, 20"

set tics font "Helvetica,25"
plot "chnx.dat" using 1:2 title "System throughput" w lp lt 1 lw 4 pt 2 ps 2
replot


if(FILE_OUTPUT){
set terminal postscript enhanced monochrome
set output ARG2.".eps"
replot
}

set terminal aqua