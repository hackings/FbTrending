class FbPagesController < ApplicationController
  def index
    @fb_pages = FbPage.all
  end

  def new
  end

  def create
  end
end
