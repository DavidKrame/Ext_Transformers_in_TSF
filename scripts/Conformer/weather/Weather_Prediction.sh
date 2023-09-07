if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/Conformer" ]; then
    mkdir ./logs/Conformer
fi

model_name="Conformer"
seq_len=96
file_name="Weather_Prediction"

python -u ./Conformer/prediction_Elec1.py \
    --data WTH \
    --file_name $file_name \
    --root_path ./dataset/ \
    --data_path weather_OTH.csv \
    --target "OT" >logs/Conformer/$model_name'_weather_Prediction'.log
