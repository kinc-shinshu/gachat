class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.text :body
      t.string :name

      t.timestamps
    end
  end
end
