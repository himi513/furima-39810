## usersテーブル

| Column              | Type       | Options                        |
| ------              | ---------- | ------------------------------ |
| nickname            | string     | null: false,                   |
| email               | string     | null: false, unique: true      |
| encrypted_password  | string     | null: false                    |
| last_name           | string     | null: false                    |
| first_name          | string     | null: false                    |
| last_name_kana      | string     | null: false                    |
| first_name_kana     | string     | null: false                    |
| birthdate           | date       | null: false                    |

### Association
- has_many :items
- has_many :purchase_records

## itemsテーブル

| Column              | Type       | Options                        |
| ------              | ---------- | ------------------------------ |
| item_name           | string     | null: false                    |
| category_id         | integer    | null: false                    |
| situation_id        | integer    | null: false                    |
| delivery_charge_id  | integer    | null: false                    |
| region_id           | integer    | null: false                    |
| shipment_id         | integer    | null: false                    |
| price               | integer    | null: false                    |
| content             | text       | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :users
- has_one :purchase_records
- belongs_to :category_id
- belongs_to :situation_id
- belongs_to :delivery_charge_id
- belongs_to :region_id
- belongs_to :shipment_id


## purchase_recordsテーブル

| Column              | Type       | Options                        |
| ------              | ---------- | ------------------------------ |
| item                | references | null: false, foreign_key: true |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :users
- belongs_to :items
- belongs_to :addresses

## addressesテーブル
| Column              | Type       | Options                        |
| ------              | ---------- | ------------------------------ |
| post_code           | integer    | null: false                    |
| region_id           | integer    | null: false                    |
| city                | string     | null: false                    |
| street              | string     | null: false                    |
| building            | string     |                                |
| telephone           | string     | null: false                    |
| purchase_record     | references | null: false, foreign_key: true |

### Association
- belongs_to :purchase_records
- belongs_to : region_id
