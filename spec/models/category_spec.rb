require "rails_helper"

RSpec.describe Category, :type => :model do

  subject{
    build(:category)
  }

    describe "associations" do
        it { should have_many(:tours) }
    end
end