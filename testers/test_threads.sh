#!/bin/bash
PATH_TO_PROJECT="/home/alex/Programming/openmp"
g++ "${PATH_TO_PROJECT}/main.cpp" -fopenmp -Wall -O3 -Wextra -DTEST -o "${PATH_TO_PROJECT}/build/main"
directory="6"
coef=0.1
color="rgb"
start_file="${PATH_TO_PROJECT}/resources/${directory}/${color}.pnm"
end_file="${PATH_TO_PROJECT}/resources/${directory}/${color}ans.pnm"
result_file="${PATH_TO_PROJECT}/results/threads_tests/static.csv"
tests=5
echo 'threads,test_1,test_2,test_3,test_4,test_5' >$result_file
for ((i = 0; i < $tests; i++)); do
  "${PATH_TO_PROJECT}/build/main" 16 $start_file $end_file $coef >>/dev/null
done
for threads in {0..20}; do
  echo -n $threads >>$result_file
  for ((j = 0; j < $tests; j++)); do
    echo -n ',' >>$result_file
    "${PATH_TO_PROJECT}/build/main" $threads $start_file $end_file $coef >>$result_file
  done
  echo '' >>$result_file
done
