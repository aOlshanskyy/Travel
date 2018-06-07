require 'rails_helper'

RSpec.describe ToursController, type: :controller do
let!(:user) { build(:user) }
login_user
let!(:tour) { build(:tour) }


  it "should have a current_user" do
    expect(subject.current_user).to_not eq(nil)
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
        expect(response).to have_http_status(:success)
    end
  end

 describe "GET #show" do
    it "has a 200 status code" do
      expect(response.status).to eq(200)
    end
    it "responds to html by default" do
      expect(response.content_type)=="text/html"
    end
  end


  describe 'POST #create' do
    it "should create tour " do
      post :create, params: {tour: {title:"name", shortbody: "name", body: "name", price: 100, category_id: 1,user_id: subject.current_user.id}}
      expect(response).to have_http_status(200)

    end
  end



 
  
end