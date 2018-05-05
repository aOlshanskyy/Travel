class PagesController < ApplicationController
  def index 
  	@users = User.all
  	@tours = Tour.all
  end
end
