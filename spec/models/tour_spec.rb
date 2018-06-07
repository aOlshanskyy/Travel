require 'rails_helper'
RSpec.describe Tour, :type => :model do 
	let!(:user){create(:user)}

	subject{
		build(:tour)
	}

	
	
    context "association" do
   		it { should belong_to(:user)}
   		it { should belong_to(:category)}
  	end


end
