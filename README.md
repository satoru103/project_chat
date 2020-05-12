・アプリ名

・概要(このアプリでできることを書いて下さい)

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
|first_name     |string    |null: false|
|last_name      |string    |null: false|
|first_name_kana|string    |null: false|
|last_name_kana |string    |null: false|
|nickname       |string    |null: false|
|email          |string    |null: false, unique:ture|○|
|birthday       |date      |null: false|
|phone_number   |string    |  |
|introduction   |text      |  |
### Association
- has_one :addrres
- has_many :comments
- has_many :items
- has_one :card

# projectテーブル
|Column|Type|Options|Index|

# todolistテーブル
|Column|Type|Options|Index|
