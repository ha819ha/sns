class UsersController < ApplicationController
  def create
    User.create(name: params[:name], password: params[:password])
    redirect_to(:root)
  end
end
