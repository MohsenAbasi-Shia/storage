#Run in a container
for var in {0..5}; do sudo docker-compose -f 700$var/docker-compose.yml up -d; done
redis-cli --cluster create 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 --cluster-replicas 1
