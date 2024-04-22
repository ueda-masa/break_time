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


## users テーブル

| Column              | Type   | Options     |
| ------------------- | ------ | ----------- |
| name            | string | null: false |
| email               | string | null: false, unique: true | 
| encrypted_password  | string | null: false |

has_many : timers
has_many : messages



## timer テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| id           | integer    | primary_key: true |
| user_id      | references | null: false , foreign_key:true |
| start_time   | datetime   | null: false |
| end_time     | datetime   | null: false |
| duration     | integer    | null: false |

belongs_to:user

## message テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| id           | integer    | primary_key: true |
| user_id      | references | null: false , foreign_key:true |
| content      | text       | 
| created_at   | datetime   | null: false |
| duration     | integer    | null: false |

belongs_to:user

