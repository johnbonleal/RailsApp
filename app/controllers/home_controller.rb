class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to members_path
    else
      redirect_to user_session_path
    end
  end
end