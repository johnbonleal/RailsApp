class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
 
    before_action :authenticate_user!

    def after_sign_in_path_for(resource)
        if resource.role == 'super_admin'
            rails_admin_path
        elsif resource.role == 'admin'
            admin_index_path
        else
            member_index_path
        end
        
    end
    
end
