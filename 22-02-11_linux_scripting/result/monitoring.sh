echo "start monitoring"

ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10 > temp.txt

echo "[" > monitoring-data.json

counter=0

cat temp.txt | while read line 
do 

  cpu=$(echo $line | cut -d ' ' -f 1 | tr ',' '.')
  pid=$(echo $line | cut -d ' ' -f 2)
  user=$(echo $line | cut -d ' ' -f 3)

  if [ $cpu == '%CPU' ]
  then
    continue
  fi

  if [ $counter != 0 ]
  then
    echo "," >>  monitoring-data.json
  fi

  echo "{ \"pid\": $pid, \"cpu\": $cpu, \"user\" :\"$user\" }"  >> monitoring-data.json
  
  ((counter++))

  if [ $counter == 5 ]
  then
     break
  fi  

done

echo "]" >> monitoring-data.json

echo "finished monitoring"