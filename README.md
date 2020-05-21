・アプリ名  
　project-chat

・概要(このアプリでできることを書いて下さい)  
  プロジェクトメンバーが各部署が持っているタスクを確認できる  
  チャット形式で進捗を更新できる  
  todoのように完了すれば消すことができる  

・制作背景(意図)  
　情報共有をメールで実施しているが、メールの数が膨大すぎて過去のメールから遡るのに時間がかかる
　各部署のタスク共有が会議、メールになっているため
　
　こういった課題に対応するために以下のような機能を持ったアプリを作成しました。
　チャット形式で現状のタスク状況を部署ごとに把握できる
　
・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)

　⇒できている範囲で貼り付けましょう。
・実装予定の内容

・DB設計
## usersテーブル
|Column|Type|Options|Index|
|------|----|-------|-----|
|name       |string    |null: false|
|email      |string    |null: false, unique:ture|○|
### Association
- has_many :projects

# projectテーブル
|Column|Type|Options|Index|
|name |string |null:false|


### Association
has_many :todolists
has_many :users

# users_projectsテーブル
|Column|Type|Options|Index|  
|------|----|-------|-----|
|user   |references|foreign_key: true
|project|references|foreign_key: true

### Association
belongs_to :project  
belongs_to :user


# todolistテーブル
|Column|Type|Options|Index|
|------|----|-------|-----|
|todolist_name|string   |null: false|
|body         |text
|project      |reference||

### Association
belongs_to :project

# prograssテーブル
|Column|Type|Options|Index|
|------|----|-------|-----|
|progress|text|

### Association
belongs_to :todolist
