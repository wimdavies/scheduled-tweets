class MainController < ApplicationController
  def index
    if session[:user_id]
      # `find_by` will not throw error if cookie user_id can't be found in db
      #  e.g. user deletes their account, we don't want app to crash immediately
      @user = User.find_by(id: session[:user_id])
    end
  end
end
