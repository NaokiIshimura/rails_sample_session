# Session Test


## 概要
Sessionの設定・取得を行う

## 自動的に払い出されるsessionの取得

### 取得
```
session[:session_id]
```
or 
```
request.session_options[:id]
```

### 有効期限
- デフォルト設定ではブラウザ終了時に削除
- configで有効期間を指定できる
```
# config/initializers/session_store.rb
Rails.application.config.session_store :cookie_store, key: '_test_app_session', expire_after: 2.week
```

## 手動で設定するsessionの設定・取得

### 設定
```
# 指定した値を保存する
session[:test] = 'aaa'
# ランダムな値を保存する
session[:random] = SecureRandom.urlsafe_base64
```

### 取得
```
session[:test]
session[:random]
```