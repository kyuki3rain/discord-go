# goバージョン
FROM golang:1.21-alpine
# アップデートとgitのインストール
RUN apk add --update &&  apk add git openssh-client
# appディレクトリの作成
RUN mkdir /go/src/app
# ワーキングディレクトリの設定
WORKDIR /go/src/app
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD . /go/src/app
# ホットリロード用
RUN go install github.com/cosmtrek/air@v1.27.3

RUN git config --global --add safe.directory /go/src/app

CMD ["air","-c","./docker/bot/.air.toml"]