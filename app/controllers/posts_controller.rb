class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def create
    if signed_in?
      Post.create(user: current_user.name, content: params[:content])

      redirect_to :root
    else
      flash.now[:danger] = 'please login'
      render "sessions/new"
    end
  end
end