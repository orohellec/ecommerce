class Item < ApplicationRecord
  has_one_attached :images

  has_many :carts_items
  has_many :carts, through: :carts_items
  has_many :orders, through: :order_items


  scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }
end
