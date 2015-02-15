class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.string :user_id
      t.string :planet_id
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
