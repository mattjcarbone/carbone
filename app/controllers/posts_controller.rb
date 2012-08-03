class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(params[:post])
    if @post.save
      redirect_to root_path, notice: "Successfully created post."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
