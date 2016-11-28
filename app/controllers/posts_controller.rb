class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :destroy, :update]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save!

    redirect_to post_path(@post)
  end

  def edit
  end

  def update
    @post.assign_attributes(post_params)
    @post.save!
    redirect_to post_path(@post)
  end

  def destroy
    @post.destroy!
    redirect_to posts_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
