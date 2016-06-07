class CommentsController < ApplicationController

  def add
    @comment = Comment.new(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def delete
  end

  def new
    @comment = Comment.new(params[:post_id])
  end

private

  def comment_params
    params.require(:comment).permit(:post_id, :body)
  end

end
