set style line 2 lc rgb '#5e9c36' pt 6 ps 1 lt 1 lw 2 # --- green

set style line 11 lc rgb '#808080' lt 1
set border 3 back ls 11
set tics nomirror

set style line 12 lc rgb '#e0e0e0' lt 0 lw 1
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb"white" behind lw 0
#set samples 10000
set terminal pngcairo size 600,220 font "Sans,8"
set output "expenses.png"

unset key
set ylabel "BTC"
set xlabel "Bitcoin.org Expenses 2014-12-01 To 2015-02-28" 

set boxwidth 0.5
set style fill solid
set yrange[0:]

plot 'expenses.data' using 1:3:xtic(2) with boxes ls 2
