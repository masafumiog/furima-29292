# README

## users テーブル

| Column   | Type     | Options     |
| -------- | -------- | ----------- |
| name     | string   | null: false |
| email    | string   | null: false |
| password | string   | null: false |

 ### Association
 - has_many :users
 - has_many :tweets

## tweets テーブル

| Column   | Type      | Options     | 
| -------- | --------- | ----------- |
| image    | string    | null: false |
| text     | string    | null: false |
| category | string    | null: false |
| price    | string    | null: false |
| users_id | string    | null: false |

### Association
-belongs_to : user
-belongs_to : tweet

## comments テーブル

| Column    | Type      | Options     | 
| --------- | --------- | ----------- |
| text      | string    | null: false |
| user_id   | string    | null: false |
| tweets_id | string    | null: false |

### Association
-has_one : buy

## buy　テーブル

| Column   | Type       | Options     | 
| -------- | ---------- | ----------- |
| name     | string     | null: false |
| card     | string     | null: false |
| address  | string     | null: false |
| tweets_id| references | null: false |

### Association
 belongs_to : tweet
 