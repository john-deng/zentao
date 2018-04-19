
docker rm -f zentao-server >/dev/null

mkdir -p data/zbox && docker run -d -p 8088:80 -p 3306:3306 \
        -e USER="root" -e PASSWD="password" \
        -e BIND_ADDRESS="false" \
        -v $PWD/data/zbox/:/opt/zbox/ \
        --name zentao-server \
        idoop/zentao:latest