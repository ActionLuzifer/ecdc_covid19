current_time=$(date "+%Y-%m-%d_%H-%M-%S")
ct_xlsx=$(date "+%Y-%m-%d")
echo $current_time

wget -S https://opendata.ecdc.europa.eu/covid19/casedistribution/csv -Ocasedistribution_$current_time.csv                  >casedistribution_$current_time.csv.log                        2>&1
wget -S https://opendata.ecdc.europa.eu/covid19/casedistribution/json -Ocasedistribution_$current_time.json                >casedistribution_$current_time.json.log                       2>&1
wget -S https://opendata.ecdc.europa.eu/covid19/casedistribution/xml -Ocasedistribution_$current_time.xml                  >casedistribution_$current_time.xml.log                        2>&1
wget -S https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-$ct_xlsx.xlsx >COVID-19-geographic-disbtribution-worldwide-$ct_xlsx.xlsx.log 2>&1
