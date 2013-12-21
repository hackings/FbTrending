require 'spec_helper'

describe "fb_pages/index.html.erb" do
  it "list all the pages" do
    assign(:fb_pages, [ Fabricate(:fb_page) ])
    render
    expect(rendered).to match /Listing Facebook Trands/
    expect(rendered).to match /Business name/ 
    expect(rendered).to match /Description/
    expect(rendered).to match /Name/
    expect(rendered).to match /Email/
    expect(rendered).to match /Facebook likes/
    
  end
end
