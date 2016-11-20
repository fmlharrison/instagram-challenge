class CommentsController < ApplicationController

  before_action :set_post

  def create
    authenticate_user!
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:success] = "Comment added!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Please leave a comment, if you want to comment. Silly!"
      redirect_to post_path(@post)
    end
  end

  def destroy
    authenticate_user!
    @comment = @post.comments.find(params[:id])
    if current_user.id == @comment.user.id
      @comment.destroy
      flash[:success] = "Comment deleted..."
      redirect_to root_path
    else
      flash[:alert] = "You are not the author of this comment! How dare you try to delete it!"
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
