class Product < ApplicationRecord
  def is_discounted?
    if price.to_i <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax_amount = price.to_i * 0.09
    return tax_amount
  end

  def total
    total_cost = price.to_i + tax()
  end

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }
  # validates :description, presence: true
  # validates :description, length: { in: 10..500 }
end
