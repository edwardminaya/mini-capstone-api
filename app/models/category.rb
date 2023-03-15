class Category < ApplicationRecord
  has_many :catgeory_products
  has_many :products, through: :catgeory_products
end
