class PostsController < ApplicationController

  def index
    @posts = Post.all
    @user = User.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.user_id = User.find(current_user).id
    @post.title = params.require(:post).permit(:title)[:title]
    @post.image = params.require(:post).permit(:image)[:image]
    @post.link = params.require(:post).permit(:link)[:link]
    @post.save
    # post = params.require(:post).permit(:title, :image, :link)
    # Post.create(post)
    redirect_to posts_path
  end

  def show
    @users = User.all
    @post = Post.find(params[:id])
    post_id = Post.find(params[:id]).id
    @comments = Comment.where(post_id: post_id)
  end

  def edit
    @user_id = User.find(current_user).id.to_s
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params.require(:post).permit(:title, :image, :link))
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    Comment.where(post_id: @post.id).destroy_all
    @post.destroy
    redirect_to posts_path
  end

end
