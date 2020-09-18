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

| Column      | Type      | Options     | 
| --------    | --------- | ----------- |
| name        | string    | null: false |
| text        | text      | null: false |
| category_id | integer   | null: false |
| status_id   | integer   | null: false |
| burden_id   | integer   | null: false |
| area_id     | integer   | null: false |
| send_date_id| integer   | null: false |
| price       | integer   | null: false |
| user_id     | integer   | foreign_key:true ,null: false|


### Association
-belongs_to : user
-has_one : buy

## buys　テーブル

| Column   | Type       | Options          |
| -------- | ---------- | -----------      |
| user_id  | integer     | foreign_key:true ,null: false |
| item_id  | integer     | foreign_key:true ,null: false |

### Association
-belong_to : user
-belong_to : item
-has_one : address

## address テーブル

| Column      | Type       | Options     | 
| ----------- | ---------- | ----------- |
| address     | string     | null: false |
| buy_id      | integer    | foreign_key:true ,null: false|
| postnumber  | string     | null: false |
| prefectures | integer    | null: false |
| city        | string     | null: false |
| buildname   | string     |             |
| tellnumber  | string     | null: false | 




### Association
 -belongs_to : buy
