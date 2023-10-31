class ApplicationController < ActionController::Base
  before_action :set_current_user
  
  def set_current_user
    if session[:user_id]
      # `find_by` will not throw error if cookie user_id can't be found in db
      #  e.g. user deletes their account, we don't want app to crash immediately
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def require_login
    redirect_to sign_in_path, status: :see_other, alert: "You must be signed in to do that" if Current.user.nil?
  end
end
