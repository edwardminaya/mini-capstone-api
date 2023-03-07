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
end
