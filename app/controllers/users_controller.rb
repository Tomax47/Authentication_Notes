class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_param)
    if @user.save
      redirect_to notes_path
      session[:user_id] = @user.id
      #Log the user in
    else
      redirect_to users_new_path, notice: @user.errors.full_messages.to_sentence
    end

  end



  private
  def user_param
    params.require(:user).permit(:email, :password)
  end
end
