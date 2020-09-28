FROM png-container:1.0 AS build

WORKDIR /src

COPY CMakeLists.txt main.c ./

RUN cmake . && make

CMD ["./pngprocess", "/picture/picture.png", "/picture/picture.png"]