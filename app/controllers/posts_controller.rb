class PostsController < ApplicationController
#	before_action :authenticate_user!

  def remove
  end

  def show
  	@post = Post.find(params['id'])
  	#@comment = Comment.new
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
