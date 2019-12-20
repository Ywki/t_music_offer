## users テーブル
|Column|Type|Options|
|------|----|-------|
|user_name|strings|null :false, unique: true, index: true|
|email    |strings|null :false, unique: true|
|password |strings|null :false, unique: true|

### Association
- has_many :contents 
- has_many :companys
- has_many :groups



## groups テーブル
|Column|Type|Options|
|------|----|-------|
|group_name|strings|null :false, unique: true|
|genre     |strings|null :false|
|homepage  |strings||
|image     |strings||
|born_in   |integer||
|activity  |text   ||

### Association
- has_many :musics
- has_many :contents
- has_many :users



## companys テーブル
|Column|Type|Options|
|------|----|-------|
|company_name    |strings|null :false, unique: true|
|business        |strings|null :false|
|company_email   |strings|null :false, unique: true|
|address         |strings|null :false|
|company_homepage|strings||
|company_image   |strings||

### Association
- has_many :contents
- has_many :users



## contents テーブル
|Column|Type|Options|
|------|----|-------|
|expalanation|text|null :false|
|image    |strings   ||
|request  |text      ||
|users_id |references|null :false, foriegn_key: true|
|groups_id|references|null :false, foriegn_key: true|

### Association
- belongs_to :music
- belongs_to :company
- belongs_to :group
- belongs_to :user



## musics テーブル
|Column|Type|Options|
|------|----|-------|
|title      |strings|null :false|
|music_url  |strings|null :false, unique: true|
|relerse_day|integer|null :false|

### Association
- belongs_to :content
- belongs_to :group



## users_groups テーブル
|Column|Type|Options|
|------|----|-------|
|users_id |references|null :false, foriegn_key: true|
|groups_id|references|null :false, foriegn_key: true|

### Association
- belongs_to :user
- belongs_to :group