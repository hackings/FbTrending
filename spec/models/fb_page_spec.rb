require 'spec_helper'

describe FbPage do
  it{
    should validate_presence_of(:business_name)
    should validate_presence_of(:facebook_url)
    should validate_presence_of(:email)

    should allow_value("test@example.com").for(:email)
    should_not allow_value("no_email").for(:email)
  }
  
 it "should return top 30 pages order by fb likes" do
   page1 = Fabricate(:fb_page) 
   page2 = Fabricate(:fb_page)

   page1.update_column( :facebook_likes, 10)
   page2.update_column( :facebook_likes, 20)

   top_results = [ page2, page1 ]

   expect( FbPage.top_30_trands.all ).to eq(top_results)

 end

end
