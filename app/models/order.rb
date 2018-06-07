class Order < ApplicationRecord
	belongs_to :user
	 validates :firstname, :lastname, :from_city, :to_city, :count, :data, :user_id, presence: true
end
