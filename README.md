# 概要
node.js開発用のdockerコンテナ。コード変更の度nodemonで自動再起動

# 実行方法

### コンテナ起動

```bash
docker-compose up -d
```

### IPアドレスを知る

```bash
docker-machine ls
```

または `docker-machine ip` `docker-machine ip default`

### ブラウザでアクセスする

上記方法で得たIPアドレスのport8080にアクセス

# 終了方法

### コンテナ削除

コンテナとイメージを削除

```bash
docker-compose down --rmi all
```

ボリューム削除

```bash
docker volume rm node-nodemon-container_node_modules
```

# 開発する

### コンテナに入る

```bash
docker exec -it node bash
```

### ホストディレクトリからコンテナ内のコマンドを実行する

```bash
docker exec -it node npm install hoge
```

### nodemonが機能してることを確認する

```bash
docker-compose logs -f
```

または

```bash
docker logs node -f
```
