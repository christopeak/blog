class PostsController < ApplicationController
  def new
		@post = Post.new
  end

  def create
		@post = Post.new(post_params)
		@post.save

  end

  def remove
  end

  def show
  end

  def index
		@posts = Post.all
  end

	private

	def post_params
		params_require(:post).permit(:title, :body)
	end
end
