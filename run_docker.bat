docker volume create --name picture

docker build ./machine/ -t png-container:1.0
docker run -td -v picture:/picture --name=png-container png-container:1.0

docker cp picture.png png-container:/picture/

docker build ./exec_appli/ -t png-appli:1.0    
docker run -t -v picture:/picture png-appli:1.0

docker cp png-container:/picture/picture.png picture_modified.png 