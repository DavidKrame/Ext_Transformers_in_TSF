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
file_name="Binance"

python -u ./Conformer/train.py \
    --data Binance \
    --file_name $file_name \
    --root_path ./dataset/ \
    --data_path Binance.csv \
    --patience $patience\
    --target "OT" \
    --train_epochs $train_epochs >logs/Conformer/$model_name'_Binance_'.log
