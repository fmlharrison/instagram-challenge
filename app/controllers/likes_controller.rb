class LikesController < ApplicationController

  before_action :set_post

  def create
    authenticate_user!
    @like = @post.likes.build
    @like.user_id = current_user.id
    p @like
    if @like.save
      flash[:success] = "Post Liked!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Please sign in to like this post!"
      redirect_to post_path(@post)
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

end
