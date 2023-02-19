class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  # def new
  # end

  def create
    posta = Post.create(content: params[:content])
    render jason:{ post: post}
  end
end
