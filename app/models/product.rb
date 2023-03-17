class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :catgeory_products
  has_many :categories, through: :catgeory_products
  has_many :carted_products
  has_many :users, through: :carted_products

  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, presence: true
  # validates :description, length: { in: 10..500 }
end
