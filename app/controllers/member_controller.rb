class MemberController < ApplicationController
    def index
        @user = User.find(current_user.id)
      
        respond_to do |format|
          format.html # show.html.erb
          format.xml  { render :xml => @user }
        end
    end

    def create
        @user = User.new(params[:user])
        
        @user.save
        redirect_to @user
    end
end
