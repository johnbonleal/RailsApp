class AdminController < ApplicationController
    def index
    end
    
    def create
        @user = User.new(params[:user])
        
        @user.save
        redirect_to @user
    end
end
