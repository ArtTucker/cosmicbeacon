class AddDeliveryToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :delivery, :datetime
  end
end
