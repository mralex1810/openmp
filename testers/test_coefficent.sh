#!/bin/bash
PATH_TO_PROJECT="/home/alex/Programming/openmp"
g++ "${PATH_TO_PROJECT}/main.cpp" -fopenmp -Wall -O3 -Wextra -DTEST -o "${PATH_TO_PROJECT}/build/main"
directory="6"
threads=0
color="rgb"
start_file="${PATH_TO_PROJECT}/resources/${directory}/${color}.pnm"
end_file="${PATH_TO_PROJECT}/resources/${directory}/${color}ans.pnm"
result_file="${PATH_TO_PROJECT}/results/coefficient_tests/static8.csv"
tests=5
echo 'threads,test_1,test_2,test_3,test_4,test_5' >$result_file
for ((i = 0; i < $tests; i++)); do
  $PATH_TO_PROJECT/build/main $threads $start_file $end_file 0.1 >>/dev/null
done
for coef in 0.01 0.02 0.05 0.075 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.48 0.49 0.495 0.499; do
  echo -n $coef >>$result_file
  for ((j = 0; j < $tests; j++)); do
    echo -n ',' >>$result_file
    $PATH_TO_PROJECT/build/main $threads $start_file $end_file $coef >>$result_file
  done
  echo '' >>$result_file
done
