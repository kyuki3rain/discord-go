# goバージョン
FROM golang:1.21-alpine
# アップデートとgitのインストール
RUN apk add --update &&  apk add git
# appディレクトリの作成
RUN mkdir /go/src/app
# ワーキングディレクトリの設定
WORKDIR /go/src/app
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD ./webhook /go/src/app
COPY .air.toml /go/src/app
COPY .env /go/src/app
# ホットリロード用
RUN go install github.com/cosmtrek/air@v1.27.3
CMD ["air","-c",".air.toml"]