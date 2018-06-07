require 'rails_helper'
RSpec.describe Order, :type => :model do 
	let!(:user){create(:user)}
	subject{
		build(:order)
	}

	 describe "validation" do
       it "is valid with valid attributes" do
         expect(subject).to be_valid
       end
    end
	
    context "association" do
   		it { should belong_to(:user)}
  	end

end
