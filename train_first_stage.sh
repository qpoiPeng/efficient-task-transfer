tasks=("stsb", "rte", "mrpc")
for i in “${array[@]}”; do
    python ./training_scripts/run_transfer.py \
        --id 1 \
        --learning_rate 1e-4 \
        --num_train_epochs 10 \
        i
done