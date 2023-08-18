class ApplicationController < ActionController::Base

  helper_method :current_user
  helper_method :ensure_notes

  def ensure_user
    if current_user.nil?
      redirect_to users_new_path
    end
  end

  def ensure_notes
    #TODO:
  end


  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
end
