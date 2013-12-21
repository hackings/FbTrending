class FbPagesController < ApplicationController
  def index
    @fb_pages = FbPage.all
  end

  def new
    @fb_page = FbPage.new
  end

  def create
    @fb_page = FbPage.new(fb_page_params)
    respond_to do |format|
      if @fb_page.save
        format.html { redirect_to fb_pages_path, notice: 'Fb page was successfully created.' }
      else  
        format.html {  render action: 'new' }
      end
    end 
  end

private
  
  def fb_page_params
    params.require(:fb_page).permit(:business_name, :facebook_url, :description, :name, :email, :facebook_likes)
  end
end
