#!/bin/bash
PATH_TO_PROJECT="/home/alex/Programming/openmp"
g++ "${PATH_TO_PROJECT}/main.cpp" -O3 -DTEST -o "${PATH_TO_PROJECT}/build/main"
directory="6"
color="rgb"
start_file="${PATH_TO_PROJECT}/resources/${directory}/${color}.pnm"
end_file="${PATH_TO_PROJECT}/resources/${directory}/${color}ans.pnm"
result_file="${PATH_TO_PROJECT}/results/one_thread_tests/without_openmp.csv"
tests=5
echo 'time' >$result_file
for ((i = 0; i < $tests; i++)); do
  "${PATH_TO_PROJECT}/build/main" 1 $start_file $end_file 0.1 >>/dev/null
done

for threads in {0..20}; do
  $PATH_TO_PROJECT/build/main 1 $start_file $end_file 0.1 >>$result_file
  echo '' >>$result_file
done
