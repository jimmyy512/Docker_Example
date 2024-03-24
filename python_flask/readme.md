#### 打包鏡像

```sh=
docker build -t python-flask-demo .
```

#### 運行鏡像

```sh=
docker run -d -p 5000:5000 python-flask-demo
```

#### 瀏覽器訪問

http://127.0.0.1:5000/
就可以看到前端網頁服務
