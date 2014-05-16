class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to posts_path, notice: "Haha you logged in!"
    else
      render :new, notice: "Incorrect Login Credentials"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
