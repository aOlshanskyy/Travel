class Userparam < ApplicationRecord
	 belongs_to :user
  
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", small: "50x50>" }, default_url: "/images/avatar.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  
end
