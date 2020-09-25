# アプリケーション名
  meal-app


# アプリケーションの概要
- その日の食事の献立を提案
- 料理のカテゴリーや今ある食材から献立を検索
- 一週間前までに食べたものからユーザーにたりてない栄養素を算出
- ユーザーにたりてない栄養素からそれを補える献立を提案


# URL


# 利用方法
- トップページにアクセス後、上部のフォームを記入してランダムに献立を提案
- トップページにアクセス後、下部のフォームを記入して料理を一覧表示
- 料理の名前をクリックして料理のレシピや栄養素を表示


# 目指した課題解決

## 一人暮らしや主婦(主夫)が喜ぶアプリ
- 朝食を何にするか決めるのが面倒
- 冷蔵庫にあるものから何を作るか考えたい
- 食事に偏りを感じる


# 洗い出した要件

## 献立提案機能
- 食材とカテゴリのフォームを作成、受け取ったパラメータを持つ料理を一個表示する
## 料理一覧表示機能
- 食材とカテゴリのフォームを作成、受け取ったパラメータを持つ料理の一覧を全て表示する
## 料理詳細表示機能
- 料理名、料理のカテゴリー、レシピ、食材、栄養価が表示されるページを作成
## マイページ機能
- マイページを作成、マイページには一週間前までの朝、昼、晩のご飯を記録できるようにする。usersテーブルに食べたものを保存できるカラムを追加する
## たりてない栄養素から献立提案機能
- userの年齢から一日に必要な栄養価、また一週間で食べたものから摂取した栄養価を計算する。そこから足りていない栄養価を補いやすい料理を表示する


# 実装した機能

## トップページ
- ヘッダーにサインアップページに移動するリンクと、サインインページに移動するリンクがある。
- 上部に料理のカテゴリーと食材を入力できるフォームがある。フォームを入力して検索ボタンをクリックするとsearchページに移動する。
- 下部に料理のカテゴリーと食材を入力できるフォームがある。フォームを入力して検索ボタンをクリックするとindexページに移動する。
## searchページ
- 検索内容と一致した料理が表示される。
- 下部に料理のカテゴリーと食材を入力できるフォームがある。表示された料理が気に入らなければフォームから再検索ができ、searchページに移動する。
## indexページ
- 検索内容と一致した料理が一覧形式で表示される。
## showページ
- 料理の画像、料理名、料理のレシピが表示される。


# 実装予定の機能

## トップページ
- フォームを一つにし、押すボタンによって移動するページが変わるようにする。
## showページ
- 料理の栄養価が表示されるようにする。
## マイページ
- 一週間前までに何を食べたか表示するマイページを作成する。


# ローカルでの動作方法
- gitをクローンする。
- ターミナルからディレクトリに移動してbundle install, rails db:create, rails db:migrateを実行。
- ターミナルやSequel Proを用いてcuisinesテーブルに料理名とfoodstuffsテーブルに食材を保存する。
- rails sコマンドでサーバーを立ち上げて、localhost:3000でサイトにアクセスする。


# テーブル設計

## usersテーブル

| Column        | Type      | Options           |
| ------------- | --------- | ----------------- |
| name          | string    | null: false       |
| address       | string    | null: false       |
| password      | string    | null: false       |
| age           | integer   | null: false       |
| recently_eat1 | reference | foreign_key: true |
| recently_eat2 | reference | foreign_key: true |
| recently_eat3 | reference | foreign_key: true |

### Association

- has_many : cuisines

## cuisinesテーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| image    | string  | null: false |
| name     | string  | null: false |
| recipe   | string  | null: false |
| category | integer | null: false |

### Association

- has_many :users
- has_many :cuisine_foodstuffs
- has_many :foodstuffs, through:cuisine_foodstuffs

## cuisine_foodstuffsテーブル
| Column     | Type      | Options                       |
| ---------- | --------- | ----------------------------- |
| cuisine    | reference | null:false, foreign_key: true |
| foodstuffs | reference | null:false, foreign_key: true | 

### Association
- belongs_to :cuisine
- belongs_to :foodstuff

## foodstuffsテーブル

| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| name         | string  | null: false |
| protein      | string  | null: false |
| fat          | string  | null: false |
| carbohydrate | integer | null: false |
| vitaminA     | integer | null: false |
| vitaminB1    | integer | null: false |
| vitaminB2    | integer | null: false |
| vitaminC     | integer | null: false |
| vitaminD     | integer | null: false |
| Na           | integer | null: false |
| Ca           | integer | null: false |
| Fe           | integer | null: false |

### Association
- has_many : user