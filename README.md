# Session Test

## 概要
- sessionを設定するRailsアプリ
- Railsアプリを操作するテストスクリプト

## Railsアプリの起動
1. bundle install
```
$ cd rails
$ bundle install
```

2. サーバ起動
```
$ rails server
```

3. アクセス確認
```
http://localhost:3000
```


## テストスクリプトの実行
1. webdriverへのパスを設定する
```
$ export PATH=$PATH:/xxx/xxx
```

2. 実行
```
$ cd selenium
$ ruby selenium.rb
```