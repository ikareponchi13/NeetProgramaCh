class PostsController < ApplicationController
  def index
    @posts = Post.all
    @newPost = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @newComment = Comment.new(:post_id => params[:id])
    @comments = Comment.where(post_id: params[:id])
  end

  def create
    @post = Post.new(params[:post].permit(:title))
    @post.save
    redirect_to posts_index_path
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_index_path
  end

end
