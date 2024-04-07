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