make
docker stop icomet
docker rm icomet
docker image rm icomet:0.2.5
docker build . -t icomet:0.2.5
docker run -it -d -p 8885:8885 --network crm-network --network-alias alias-icomet --link webchat icomet:0.2.5
