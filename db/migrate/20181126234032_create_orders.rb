class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :user, index: true
      t.timestamps
    end

    create_table :orders_items do |t|
      t.belongs_to :orders, index: true
      t.belongs_to :items, index: true
      t.timestamps
    end
  end
end
