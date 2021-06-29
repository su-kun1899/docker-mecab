# docker-mecab

docker build --no-cache --memory=4g -t docker-mecab .
docker run --rm -it docker-mecab mecab
docker run --rm --name my-mecab -it docker-mecab /bin/bash
