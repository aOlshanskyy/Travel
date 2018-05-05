class ToursController < ApplicationController
  def index
  end

  def new
  	@tour = Tour.new
  end

  def create

  	@tour = Tour.new(tour_params)
	if @tour.save
			redirect_to root_path
		else render 'new'
		end
  end


  def show
  end

  private

  def tour_params
  	params.require(:tour).permit(:title, :shortbody, :body, :price, :category_id, :user_id)
  end
end
