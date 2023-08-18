class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])

    if @user && @user.is_password?(user_params[:password])
      session[:user_id] = @user.id
      redirect_to notes_path, notice: "Welcome Back!"

    else
      redirect_to sessions_new_path, notice: "Invalid email or password!"
    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to root_path

  end


  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
