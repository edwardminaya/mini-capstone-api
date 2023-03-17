class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    # product = Product.find_by(id: params[:product_id])

    # calculated_subtotal = product.price * params[:quantity].to_i
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_subtotal + calculated_tax

    # @order = Order.new(
    #   user_id: current_user.id,
    #   product_id: params[:product_id],
    #   subtotal: calculated_subtotal,
    #   tax: calculated_tax,
    #   total: calculated_total,
    # )
    # @order.save

    @carted_products = CartedProduct.where(status: "carted")
    render :show

    @order = Order.new(
      user_id: current_user.id,
      subtotal: @carted_products.each do |x| {}
    )
  end

  def show
    @order = Order.find_by(id: params[:id])
    render :show
  end

  def index
    @orders = current_user.orders
    render :index
  end
end
