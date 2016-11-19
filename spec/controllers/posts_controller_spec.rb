require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  before do

  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  # describe "create post" do
  #   it "successfully creates a post" do
  #     expect{post :create, post: FactoryGirl.attributes_for(:post)}.to change(Post,:count).by(1)
  #   end
  # end

end
