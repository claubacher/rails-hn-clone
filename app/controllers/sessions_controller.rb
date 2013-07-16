class SessionsController < ApplicationController
  def new
    render :layout => false
  end

  def create
    user = User.authenticate(params[:session])
    if user
      session[:id] = user.id
      redirect_to '/'
    else
      @errors = user.errors.full_messages
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
end
