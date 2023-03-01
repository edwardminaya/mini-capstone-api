class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render template: "products/index"
  end

  def single_product
    @product = Product.last
    render template: "products/show"
  end
end
