# README

## users テーブル

| Column    | Type     | Options     |
| --------  | -------- | ----------- |
| nickname  | string   | null: false |
| name      | string   | null: false |
| kananeame | string   | null: false |
| email     | string   | null: false |
| password  | string   | null: false |
| birthday  | string   | null: false |



 ### Association
 - has_many :items

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
-belongs_to : item

## buy　テーブル

| Column   | Type       | Options     | 
| -------- | ---------- | ----------- |
| users_id  | string    | null: false |
| goods_id  | string    | null: false | 

### Association
-has_one : buy
-has_one : address

## address テーブル

| Column      | Type       | Options     | 
| ----------- | ---------- | ----------- |
| address     | string     | null: false |
| buy_id      | string     | null: false |
| postnumber  | string     | null: false |
| prefectures | string     | null: false |
| city        | string     | null: false |
| buildname   | string     | null: false |
| tellnumber  | string     | null: false | 




### Association
 -belongs_to : item
 -belongs_to : buy
