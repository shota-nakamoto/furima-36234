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
- has_many :buy_managements

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
| shohin_name         | string     | null: false |
| explanation         | text       | null: false |
| price               | integer    | null: false |
| status_id           | integer    | null: false |
| category_id         | integer    | null: false |
| buyer               | string     | null: false |
| seller              | string     | null: false |
| charge_id           | integer    | null: false |
| prefecture_id       | integer    | null: false |
| sending_day_id      | integer    | null: false |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :buy_management

## buyersテーブル

|Column|Type|Options|
|------|----|-------|
| postalcode         | string     | null: false |
| prefecture_id      | integer    | null: false |
| city               | string     | null: false |
| address            | string     | null: false |
| building           | string     |
| telephone          | string     | null: false |
| buy_management     | references | null: false, foreign_key: true |

### Association
- belongs_to :buy_management

## buy_managementsテーブル

|Column|Type|Options|
|------|----|-------|
| user               | references | null: false, foreign_key: true |
| item               | references | null: false, foreign_key: true |

### Association
- has_one :buyer
- belongs_to :user
- belongs_to :item

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
