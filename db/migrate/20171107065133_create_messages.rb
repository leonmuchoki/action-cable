class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :user, foreign_key: true, index: true
      t.references :chatroom, foreign_key: true, index: true

      t.timestamps
    end
  end
end
