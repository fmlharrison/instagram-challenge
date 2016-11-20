class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.save
      flash[:success] = "Comment added!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Please leave a comment, if you want to comment. Silly!"
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
