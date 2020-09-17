# README

## users テーブル

| Column    | Type     | Options     |
| --------  | -------- | ----------- |
| nickname  | string   | null: false |
| name_sei  | string   | null: false |
| name_mei  | stirng   | null: false |
| kana_sei  | string   | null: false |
| kana_mei  | string   | null: false |
| email     | string   | null: false |
| password  | string   | null: false |
| birthday  | date     | null: false |



 ### Association
 - has_many :items
 - has_many :buys

## items テーブル

| Column    | Type      | Options     | 
| --------  | --------- | ----------- |
| image     | string    | null: false |
| text_name | string    | null: false |
| text      | string    | null: false |
| categorys | integer   | null: false |
| statuses  | integer   | null: false |
| burdens   | integer   | null: false |
| areas     | integer   | null: false |
| send_dates| integer   | null: false |
| price     | string    | null: false |
| user_id   | string    | null: false |


### Association
-belongs_to : user
-belongs_to : buy

## buys　テーブル

| Column   | Type       | Options     | 
| -------- | ---------- | ----------- |
| user_id  | string    | null: false |
| item_id  | string    | null: false | 

### Association
-has_one : user
-has_one : item
-has_one : address

## address テーブル

| Column      | Type       | Options     | 
| ----------- | ---------- | ----------- |
| address     | string     | null: false |
| buy_id      | string     | null: false |
| postnumber  | string     | null: false |
| prefectures | string     | null: false |
| city        | string     | null: false |
| buildname   | string     |             |
| tellnumber  | string     | null: false | 




### Association
 -belongs_to : item
 -belongs_to : buy
