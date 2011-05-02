class ApiController < ApplicationController
  def user_register
    logger.info "User Info :: #{params[:email]} #{params[:password]}"
    @user = User.create(:email => params[:email], :password => params[:password])

    if @user.valid?
      render :json => @user
    else
      render :json => {:error => @user.errors.full_messages}
    end
  end
end
