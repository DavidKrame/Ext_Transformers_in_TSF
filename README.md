# Scripts for each model  
Fist, you have to clone this repository. To do that, you must type :  

```sh
git clone https://github.com/DavidKrame/Ext_Transformers_in_TSF
```

After cloning this repository, you must navigate to the root folder of the generated directory to set up your environment by installing the minimum requirements. To do this, navigate to the root of the cloned directory and enter this command in the terminal:  

```sh
pip install -r requirements.txt
```

If you want to install everything, use :  

```sh
pip install -r requirements_extended.txt
```

**In order to do experiments with a specific model, you have to change ``MODEL`` in ``V_Transformer``, ``Conformer``, ``Informer``, ``Autoformer``, ``FEDFormer``, ``Pyraformer`` or ``Reformer`` in all of these following scripts.**

For Electricity and Electricity_OTH :
```sh
sh scripts/MODEL/electricity/Electricity.sh

sh scripts/MODEL/electricity/Electricity_OTH.sh

sh scripts/MODEL/electricity/Elec_Continue.sh

sh scripts/MODEL/electricity/Elec_Prediction.sh

sh scripts/MODEL/electricity/Elec_Freeze.sh
```
For Elec_Custom_01 and Elec_Custom_04 :
```sh
sh scripts/MODEL/elec_custom/Elec_Custom01.sh

sh scripts/MODEL/elec_custom/Elec_Custom04.sh

sh scripts/MODEL/elec_custom/Elec_Custom_Continue.sh

sh scripts/MODEL/elec_custom/Elec_Custom_Prediction.sh

sh scripts/MODEL/elec_custom/Elec_Custom_Freeze.sh
```
For ETTh1 and ETTh2 :
```sh
sh scripts/MODEL/etth_1_2/ETTh1.sh

sh scripts/MODEL/etth_1_2/ETTh2.sh

sh scripts/MODEL/etth_1_2/etth_Continue.sh

sh scripts/MODEL/etth_1_2/etth_Prediction.sh

sh scripts/MODEL/etth_1_2/etth_Freeze.sh
```
For Weather and Weather_OTH :
```sh 
sh scripts/MODEL/weather/Weather.sh

sh scripts/MODEL/weather/Weather_OTH.sh

sh scripts/MODEL/weather/Weather_Continue.sh

sh scripts/MODEL/weather/Weather_Prediction.sh

sh scripts/MODEL/weather/Weather_Freeze.sh
```
For Binance and Binance_OTH :
```sh 
sh scripts/MODEL/binance/Binance.sh

sh scripts/MODEL/binance/Binance_OTH.sh

sh scripts/MODEL/binance/Binance_Continue.sh

sh scripts/MODEL/binance/Binance_Prediction.sh

sh scripts/MODEL/binance/Binance_Freeze.sh
```