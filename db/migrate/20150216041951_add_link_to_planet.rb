class AddLinkToPlanet < ActiveRecord::Migration
  def change
  	add_column :planets, :link, :string
  end
end
