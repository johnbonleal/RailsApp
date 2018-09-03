class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to admin_path
    else
      redirect_to user_session_path
    end
  end
end
