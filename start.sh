g++ main.cpp -fopenmp -o main
directory="7"
coef="0.03"
color="rgb"
start_file="/home/alex/Programming/openmp/resources/${directory}/${color}.pnm"
end_file="/home/alex/Programming/openmp/resources/${directory}/${color}ans.pnm"

./main 1 $start_file $end_file $coef
./main 2 $start_file $end_file $coef
./main 3 $start_file $end_file $coef
./main 4 $start_file $end_file $coef
./main 5 $start_file $end_file $coef
./main 6 $start_file $end_file $coef
./main 7 $start_file $end_file $coef
./main 8 $start_file $end_file $coef
./main 10 $start_file $end_file $coef
./main 12 $start_file $end_file $coef
./main 16 $start_file $end_file $coef
