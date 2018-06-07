require "rails_helper"

RSpec.describe Category, :type => :model do

  subject{
    build(:category)
  }

   describe "validation" do
       it "is valid with valid attributes" do
         expect(subject).to be_valid
       end
    end

    describe "associations" do
        it { should have_many(:tours) }
    end
end