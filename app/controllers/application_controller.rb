class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_login
  before_action :posts_ranking
  before_action :users_ranking



  private
    def check_login
      if session[:user_id]
        @user = User.find_by(id: session[:user_id])
      end
    end

    def posts_ranking
      # if @posts
        @posts = Post.all
      # end
    end

    def users_ranking
      # if @users
        @users = User.all
      # end
    end
end
