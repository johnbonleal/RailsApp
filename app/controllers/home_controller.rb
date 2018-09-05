class HomeController < ApplicationController
  def index
    if user_signed_in?
      if current_user.role == 'super_admin'
        redirect_to rails_admin_path
      elsif current_user.role == 'admin'
        redirect_to admin_index_path
      else
        redirect_to member_index_path
      end
    else
      redirect_to user_session_path
    end
  end
end



