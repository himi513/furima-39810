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
- has_many :item
- has_many :purchase_record

## itemsテーブル

| Column              | Type       | Options                        |
| ------              | ---------- | ------------------------------ |
| item_name           | string     | null: false                    |
| category            | string     | null: false                    |
| situation           | integer    | null: false                    |
| delivery_charge     | integer    | null: false                    |
| region              | string     | null: false                    |
| shipment            | integer    | null: false                    |
| price               | integer    | null: false                    |
| content             | text       | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :purchase_record
- belongs_to :category
- belongs_to :situation
- belongs_to :delivery_charge
- belongs_to :region
- belongs_to :shipment


## purchase_recordsテーブル

| Column              | Type       | Options                        |
| ------              | ---------- | ------------------------------ |
| item                | references | null: false, foreign_key: true |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :address

## addressesテーブル
| Column              | Type       | Options                        |
| ------              | ---------- | ------------------------------ |
| post_code           | string     | null: false                    |
| region              | string     | null: false                    |
| city                | string     | null: false                    |
| street              | string     | null: false                    |
| building            | string     |                                |
| telephone           | string     | null: false                    |
| purchase_record     | references | null: false, foreign_key: true |

### Association
- belongs_to :purchase_record
- belongs_to : region
