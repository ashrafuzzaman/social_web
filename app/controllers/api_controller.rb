class ApiController < ApplicationController
  def register
    logger.info "User Info :: #{params[:email]} #{params[:password]}"
    @user = User.create(:email => params[:email], :password => params[:password])
    render :json => @user
  end

end
