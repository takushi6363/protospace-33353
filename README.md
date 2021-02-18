
## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false | 
| occupation | text   | null: false |
| position   | text   | null: false |

### Association
- has_many prototypes
- has_many comments

## prototypes テーブル

| Colimn     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| catch_copy | text       | null: false                    |
| concept    | text       | null: false                    |
| image      |            | use ActiveStorage              |
| user       | references | null: false, foreign_key: true |

### Association
- belongs_to user
- ≈

## comments テーブル

| Colimn     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | text       | null: false,                   |
| user       | references | null: false, foreign_key: true |
| prototype  | references | null: false, foreign_key: true |

### Association
- belongs_to user
- belongs_to prototype
