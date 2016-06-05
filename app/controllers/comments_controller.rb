class CommentsController < ApplicationController
  def add
		@comment = Comment.new(params[:post_id])
  end

  def create
		@comment = Comment.new(comment_params)
		@comment.save
		redirect_to posts_path
  end

  def delete
  end

	def new
		@comment = Comment.new
	end

	private

	def comment_params
		params.require(:comment).permit(:post_id, :body)
	end

end
