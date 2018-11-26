class Item < ApplicationRecord
  has_many :carts_items
  has_many :carts, through: :carts_items
  has_many :orders, through: :order_items
end
