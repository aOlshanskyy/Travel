require 'rails_helper'
RSpec.describe Order, :type => :model do 
	let!(:user){create(:user)}
	subject{
		build(:order)
	}

	
	
    context "association" do
   		it { should belong_to(:user)}
  	end

end
