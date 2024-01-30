#!/bin/bash

# 環境変数を読み込み
for kv in $(< .env)
do
  if [[ "$kv" = ^\s*$ ]] || [[ "$kv" =~ ^# ]]; then
    continue
  fi
  export $kv
done

# 署名するデータ（この例ではJSONデータ）
DATA='{"ref": "refs/heads/main"}'

# HMAC SHA256署名を計算します
SIGNATURE=$(echo -n "$DATA" | openssl dgst -sha256 -hmac "$SECRET_KEY" | sed 's/^.* //')

echo $SIGNATURE