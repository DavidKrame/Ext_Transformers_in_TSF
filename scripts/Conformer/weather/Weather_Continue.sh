if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Conformer" ]; then
    mkdir ./logs/Conformer
fi

train_epochs=3
patience=2
model_name="Conformer"
seq_len=96
file_name="Weather_Continue"

python -u ./Conformer/train_Elec1_Continue.py \
    --data WTH \
    --file_name $file_name \
    --root_path ./dataset/ \
    --data_path weather_OTH.csv \
    --patience $patience\
    --target "OT" \
    --train_epochs $train_epochs >logs/Conformer/$model_name'_weather_Continue'.log
