#!/bin/bash
for i in {1..160}
do
  echo "Num Threads: $i"
  (export OMP_PLACES='{3}'; export OMP_NUM_THREADS=$i; ../build/micro_asimd)
done