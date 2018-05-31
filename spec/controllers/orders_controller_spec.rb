require 'rails_helper'

RSpec.describe OrdersController, type: :controller do
let!(:user) { build(:user, email: "test@gmail.com") }

 login_user

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

 describe 'POST #create' do
  let!(:userparam) { build(:userparam, user: subject.current_user) }
    it "should create orderparam" do
      post :create, params: {order: {firstname: "MyString",lastname: "MyString",from_city: "MyString",to_city:"MyString",count: 1,data: "2018-05-30 15:25:18",user_id: 1}}
      expect(response).to redirect_to order_path(subject.current_user.userparam.id)
    end
  end

end
