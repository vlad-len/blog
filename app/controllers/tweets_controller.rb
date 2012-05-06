class TweetsController < ApplicationController

  def create
    @post=Post.find(params[:post_id])
    @tweet=@post.tweets.create(params[:tweet])
    redirect_to posts_path
  end
  def destroy
    @post=Post.find(params[:post_id])
    @tweet=@post.tweets.find(params[:id])
    @tweet.destroy
    redirect_to post_path(@post)
  end
  end