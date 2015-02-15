class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :temp
      t.string :mass
      t.string :distance
      t.string :star

      t.timestamps null: false
    end
  end
end
