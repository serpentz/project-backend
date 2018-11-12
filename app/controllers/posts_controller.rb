class PostsController < ApplicationController
    
  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end

  def create
    render json: Post.create(post_params)
  end

  def update
    post.find(params[:id]).update(post_params)
    render json: Post.find(params[:id])
  end

  def destroy
    render json: Post.find(params[:id]).destroy
  end

  private
  def post_params
    params.require(:post).permit(:text, :url)
  end

end

