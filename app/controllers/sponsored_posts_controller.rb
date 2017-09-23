class SponsoredPostsController < ApplicationController
  def show
    @post = SponsoredPost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @post = SponsoredPost.new
  end

  def edit
    @post = SponsoredPost.find(params[:id])
  end
end
