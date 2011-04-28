class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def clear
    User.delete_all
    redirect_to "/"
  end

end
