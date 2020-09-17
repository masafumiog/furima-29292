# README

## users テーブル

| Column   | Type     | Options     |
| -------- | -------- | ----------- |
| nickname | string   | null: false |
| name     | string   | null: false |
| email    | string   | null: false |
| password | string   | null: false |


 ### Association
 - has_many :users
 - has_many :tweets

## items テーブル

| Column   | Type      | Options     | 
| -------- | --------- | ----------- |
| date     | string    | null:false  |
| area     | string    | null: false |
| status   | string    | null: false |
| burden   | string    | null: false |
| text     | string    | null: false |
| category | string    | null: false |
| price    | string    | null: false |
| users_id | string    | null: false |

### Association
-belongs_to : user
-belongs_to : 

## comments テーブル

| Column    | Type      | Options     | 
| --------- | --------- | ----------- |
| text      | string    | null: false |
| users_id  | string    | null: false |
| goods_id  | string    | null: false |

### Association
-has_one : buy
-has_one : address

## buy　テーブル

| Column   | Type       | Options     | 
| -------- | ---------- | ----------- |
| name     | string     | null: false |
| address  | string     | null: false |
| items_id | references | null: false |

## address テーブル

| Column   | Type       | Options     | 
| -------- | ---------- | ----------- |
| address  | string     | null: false |



### Association
 -belongs_to : item
 -belongs_to : buy
