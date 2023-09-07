if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Conformer" ]; then
    mkdir ./logs/Conformer
fi


train_epochs=10
patience=5
model_name="Conformer"
seq_len=96
file_name="Etth1"

python -u ./Conformer/train.py \
    --data ETTh1 \
    --root_path ./dataset/ \
    --file_name $file_name \
    --data_path ETTh1.csv \
    --patience $patience\
    --target "OT" \
    --train_epochs $train_epochs >logs/Conformer/$model_name'_etth1_'.log