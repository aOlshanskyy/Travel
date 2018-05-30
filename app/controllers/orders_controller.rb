class OrdersController < ApplicationController
  def index
  end

  def new
  	@order = Order.new
  end

  def create
     @order = current_user.orders.build(order_params)
	  if @order.save
			redirect_to order_path(current_user.userparam.id)
		else render 'new'
		end
  end

  def show
    @user = Userparam.find(current_user.userparam.id)
  end

  private

  def order_params
  	params.require(:order).permit(:firstname, :lastname, :from_city, :to_city, :count, :data, :user_id)
  end

end
