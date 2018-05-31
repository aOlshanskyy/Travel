class ToursController < ApplicationController
    before_action :authenticate_user!, exist:[:show]
    before_action :set_tour, only: [ :show, :edit, :update]
  def index
  end

  def new
  	@tour = Tour.new
  end

  def create
    if current_user.role == "Editor"
     params[:tour][:category_id]=params[:category_id]
     @tour = current_user.tours.build(tour_params)
    if @tour.save
      redirect_to root_path
    else render 'new'
    end
    end
  end


  def show
    @comments = Tourcomment.where(tour_id: @tour.id)
    @use = Userparam.all
  end

  def categories
    pp @tours=Tour.where(category_id: params[:id])
  end

  def update
    if @tour.update_attributes(tour_params)
      redirect_to @tour
      else
        render :edit
      end
  end



  private

  def tour_params
  	params.require(:tour).permit(:title, :shortbody, :body, :price, :category_id, :user_id)
  end

  def set_tour
    @tour=Tour.find(params[:id])
  end
end
