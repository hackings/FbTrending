class FbPagesController < ApplicationController
  def index
    @pages = FbPage.all
  end

  def new
  end

  def create
  end
end
