require 'spec_helper'

describe "fb_pages/new.html.erb" do
  it "renders new form with inputs" do 
   assign(:fb_page, Fabricate.build(:fb_page))
   render

   assert_select "#fb_page_business_name", :name => "fb_page[business_name]"
   assert_select "#fb_page_description", :name => "fb_page[description]" 
   assert_select "#fb_page_name", :name => "fb_page[name]" 
   assert_select "#fb_page_email", :name => "fb_page[email]" 
  end
end
