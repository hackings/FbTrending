class FbPagesController < ApplicationController
  def index
    @fb_pages = FbPage.all
  end

  def new
    @fb_page = FbPage.new
  end

  def create
  end
end
