#!/bin/sh

export RUN_TRANSFER_OUTPUT_DIR="third_stage/"

tasks=("mrpc")
for i in "${tasks[@]}"; do
  echo $i
  python ./training_scripts/run_transfer.py \
        --id 1 \
        --learning_rate 1e-4 \
        --num_train_epochs 10 \
        --length 4 \
        --task_map task_map_third_stage.json \
        $i
done