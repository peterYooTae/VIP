wallet="aleo1hchsq4af7grhg7sfg50l973p3zclh6vzxpyhrenlxsjhx9rygy9qyn7fp3"
miner_name="test1"
cpu=28

sudo nvidia-smi -i 0 -pl 180
sudo nvidia-smi -i 1 -pl 180
sudo nvidia-smi -i 2 -pl 180
sudo nvidia-smi -i 3 -pl 180
sudo nvidia-smi -i 4 -pl 180
sudo nvidia-smi -i 5 -pl 180
sudo nvidia-smi -i 6 -pl 180
sudo nvidia-smi -i 7 -pl 180

#nohup log
nohup ./aleo_prover_823 --tcp_server 36.189.234.195:10003 --address $wallet  --custom_name $miner_name > /var/log/nohup_log.log 2>&1 &

#nohup no log
nohup ./aleo_prover_823 --tcp_server 36.189.234.195:10003 --address $wallet  --custom_name $miner_name >1/dev/null  2>&1 &