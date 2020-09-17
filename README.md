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