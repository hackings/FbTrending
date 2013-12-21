require 'spec_helper'

describe FbPagesController do

  describe "GET 'index'" do
    it "returns http success" do
      fb_page = Fabricate(:fb_page)
      get 'index'
      response.should be_success
      response.should render_template :index
      assigns(:fb_pages).should_not be_nil
      assigns(:fb_pages).should eq([fb_page])
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
      response.should render_template :new
      assigns(:fb_page).should_not be_nil
      assigns(:fb_page).should be_a_kind_of(FbPage)
    end
  end

  describe "POST 'create'" do
    it "create with valid attributes" do
      post 'create', fb_page: Fabricate.attributes_for(:fb_page)
      response.should be_success
      response.should redirect_to fb_pages_path
    end
  end

end
