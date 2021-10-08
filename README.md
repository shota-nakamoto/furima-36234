## usersテーブル

|Column|Type|Options|
|------|----|-------|
| name               | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| birthday           | string | null: false |
| first_name         | string | null: false |
| last_name          | string | null: false |

### Association
- belongs_to :item
- belongs_to :buyer

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
| shohin_name         | string | null: false |
| shohin_image        | string | null: false |
| shohin_explanation  | text   | null: false |
| shohin_detail       | string | null: false |
| shohin_price        | string | null: false |
| buyer               | string | null: false |
| seller              | string | null: false |

### Association
- has_many :users
- belongs_to :buyers

## buyersテーブル

|Column|Type|Options|
|------|----|-------|
| postalcode         | string | null: false |
| prefectures        | string | null: false |
| city               | string | null: false |
| address            | string | null: false |
| building           | string | null: false |
| telephone          | string | null: false |

### Association
- has_many :users
- has_many :items
- has_one :seller

## sellersテーブル

|Column|Type|Options|
|------|----|-------|
| delivery_load      | string | null: false |
| shipping_area      | string | null: false |

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
