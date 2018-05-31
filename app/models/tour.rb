class Tour < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :tourcomments
end
