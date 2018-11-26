class Cart < ApplicationRecord
  has_many :carts_items
  has_many :items, through: :carts_items
end
