class OrdersController < ApplicationController
 def new
  	@product = Product.find(params[:product_id])
    @order = Order.new
  	params[:friends_cards].to_i.times { @order.friends_cards.build }
  end

  def show
    @order = Order.find(params[:id])
    @product = @order.product
  end

  def create
  	@order = Order.new(order_params)
  	if @order.save
  		redirect_to order_path(@order)
      flash[:success] = "Product has been successfully ordered."
  	else
     @product = Product.find(params[:product_id])
  		render 'new'
  	end

  end

  private

    def order_params
    	params.require(:order).permit(:product_id, friends_cards_attributes: [:id, :name, :email, :ic_number, :date_of_birth, :contact_number, :shipping_address, :expiry_date, :gift, :paid, :direct_bank_transfer, :paypal, :price])
    end
end
