## usersテーブル

|Column|Type|Options|
|------|----|-------|
| name               | string | null: false |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false |
| birthday           | date   | null: false |
| first_name         | string | null: false |
| last_name          | string | null: false |
| first_name_kana    | string | null: false |
| last_name_kana     | string | null: false |

### Association
- has_many :items
- has_many :buyers

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
| shohin_name         | string     | null: false |
| shohin_explanation  | text       | null: false |
| shohin_detail       | string     | null: false |
| shohin_price        | integer    | null: false |
| shohin_status       | string     | null: false |
| shohin_category     | string     | null: false |
| buyer               | string     | null: false |
| seller              | string     | null: false |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :buyer

## buyersテーブル

|Column|Type|Options|
|------|----|-------|
| postalcode         | string  | null: false |
| prefecture_id      | integer | null: false |
| city               | string  | null: false |
| address            | string  | null: false |
| building           | string  |
| telephone          | string  | null: false |

### Association
- belongs_to :seller

## buy_managementsテーブル

|Column|Type|Options|
|------|----|-------|
| delivery_load      | string     | null: false |
| shipping_area      | string     | null: false |
| user               | references | null: false, foreign_key: true |
| buyer              | references | null: false, foreign_key: true |

### Association
- belongs_to :buyer

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
