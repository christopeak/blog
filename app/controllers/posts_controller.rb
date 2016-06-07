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
  	#@comment = Comment.new
  end

  def index
  	@post = Post.new
    @posts = Post.all
  end

  def update
    @post = Post.find(params['id'])
    @comment = @post.comments.build
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
    redirect_to post_path
  end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
