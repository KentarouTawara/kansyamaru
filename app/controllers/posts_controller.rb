class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    random_post = Post.order("RANDOM()").limit(1).last
    random_post = 1 if random_post.nil? 

    if @post.save
      redirect_to post_path(random_post), success: '感謝が流れてきました！'
    else
      render :new
    end
  end

  def show
    @random_post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:name, :description)
  end
end
