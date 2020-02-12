class PostsController < ApplicationController
  before_action :is_logged_in?, only: [:new, :create]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(title: params[:post][:title], body: params[:post][:body], user_id: current_user.id)
    redirect_to posts_path
  end
end