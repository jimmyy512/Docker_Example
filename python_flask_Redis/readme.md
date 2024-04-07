# 本地啟動
## 安裝python
```sh=
choco install anaconda3
```

## 啟動 flask
#### MAC 設置變量
```sh=
export FLASK_APP=app.py
```
#### Window PowerShell 設置變量
```sh=
$env:FLASK_APP="app.py"
```
#### 運行
```sh=
flask run
```

# docker啟動
## docker網址創建
docker network create -d bridge demo-network
## 安裝redis 
``` sh=
docker image pull redis
```
## 啟動redis
``` sh=
docker container run -d --name redis-server --network demo-network redis
```

## 本地打包映像檔案
```
docker image build -t flask-demo .
```
## 本地運行 flask 服務
```
docker container run -d --network demo-network --name flask-demo --env REDIS_HOST=redis-server -p 5000:5000 flask-demo
```

## 最終效果
打开浏览器访问 http://127.0.0.1:5000

应该能看到类似下面的内容，每次刷新页面，计数加1

Hello Container World! I have been seen 36 times and my hostname is 925ecb8d111a.