class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

#  利用しないためコメントアウト
#  def new
#  end

  def create
    post = Post.create(content: params[:content])
    render json:{ post:post}
  end
end
