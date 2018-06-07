require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
let!(:user) { build(:user, email: "test@gmail.com") }
login_user
let!(:userparam){create(:userparam ,user_id: subject.current_user.id )}
  
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

 describe 'POST #create' do
    it "should create order" do
      post :create, params: {order: {firstname: "MyString",lastname: "MyString",from_city: "MyString",to_city:"MyString",count: 1,data: "2018-05-30 15:25:18",user_id: subject.current_user.id }}
      expect(response).to redirect_to order_path(subject.current_user.userparam.id)
    end

    
  end

end
