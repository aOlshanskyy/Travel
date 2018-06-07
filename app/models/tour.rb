class Tour < ApplicationRecord
	belongs_to :user
	belongs_to :category
	validates :title, :body, :shortbody, :category, presence:true	
end
