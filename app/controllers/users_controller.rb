class UsersController < ApplicationController
  before_action :check_login

  def index
    @user = User.find_by(id: session[:user_id])
  end


  private
    def check_login
        if session[:user_id]
          @user = User.find_by(id: session[:user_id])
        else
          redirect_to root_path
        end
    end
end
