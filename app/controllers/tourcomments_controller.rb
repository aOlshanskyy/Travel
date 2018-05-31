class TourcommentsController < ApplicationController

	def create
		params[:tourcomment][:tour_id] = params[:tour_id]
		params[:tourcomment][:user_id] = current_user.id
		@tourcomment = Tourcomment.create(tourcomments_params)
		if @tourcomment.save
			redirect_to tour_path(params[:tour_id])
		else
			@tourcomment.errors.full_messages.each do |msg|
				@msg = msg
		end  
    	flash[:notice] = "#{@msg}"
    	redirect_to tour_path(params[:tour_id])
	    end
	    
	end


	private
	def tourcomments_params
		params.require(:tourcomment).permit(:user_id, :tour_id, :textofcom)
	
	end
end
