class SponsoredPostsControllerController < ApplicationController

  def show
    @SponsoredPost = SponsoredPost.find(params[:id])
  end

  def new
    @SponsoredPost = SponsoredPost.new
  end

  def edit
    @SponsoredPost = SponsoredPost.find(params[:id])
  end

end
