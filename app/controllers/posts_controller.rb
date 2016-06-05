class PostsController < ApplicationController
#	before_action :authenticate_user!
	
  def new
		@post = Post.new
  end

  def create
		@post = Post.new(post_params)
		@post.save
		redirect_to posts_path
  end

  def remove
  end

  def show
  	@post = Post.find(params['id'])
  end

  def index
		@post = Post.new
		@posts = Post.all
  end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
