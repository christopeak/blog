class CommentsController < ApplicationController

  def add
    @comment = Comment.new(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.update_attribute(:user_id, current_user.id)
		@user = User.find(current_user.id)
		@admin = AdminUser.first
		if @comment.save
			#- UserMailer.welcome_email(@user).deliver_now
			CommentNotifier.send_comment_email(@admin, @comment).deliver
		end
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
