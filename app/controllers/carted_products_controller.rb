class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
    )
    @carted_product.save
    render :show
  end

  def index
    @carted_products = CartedProduct.all

    if params[:cart]
      @carted_products = @carted_products.where(status: "carted")
    end
    render :index
  end
end
