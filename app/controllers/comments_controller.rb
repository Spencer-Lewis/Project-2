class CommentsController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
    @comments = Comment.where(user_id: current_user.id)
  end

  def new
    @comment = Comment.new
    @@post_id = Post.find(params[:id]).id
  end

  def create
    @comment = Comment.new
    @comment.user_id = User.find(current_user).id
    @comment.post_id = @@post_id
    @comment.content = params.require(:comment).permit(:content)[:content]
    # puts "params: #{params}"
    # puts "comment: #{@comment}"
    @comment.save
    redirect_to comments_path
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(params.require(:comment).permit(:content))
    redirect_to comments_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end
end
