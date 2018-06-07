require 'rails_helper'
RSpec.describe Userparam, :type => :model do 
	let!(:user){create(:user)}
	subject{
		build(:userparam)
	}

	
	
    context "association" do
   		it { should belong_to(:user)}
  	end

end
