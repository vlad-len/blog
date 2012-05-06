class PostsController < ApplicationController

before_filter :authenticate_user!
  def index
    @post = Post.all

  end
  def show
    @post=Post.find(params[:id])
  end
  def new
    @post = Post.new
  end
  def edit
    @post=Post.find(params[:id])

  end

  def destroy
     @post=Post.find(params[:id])
     @post.destroy
     redirect_to posts_path(@post)
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to posts_path(@post)

  end
  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to posts_path(@post)

  end
end
