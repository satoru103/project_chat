class CreateTodolists < ActiveRecord::Migration[5.2]
  def change
    create_table :todolists do |t|
      t.string     :todolist_name
      t.text       :body
      t.references :project
      t.timestamps
    end
  end
end
