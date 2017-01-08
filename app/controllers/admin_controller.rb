class AdminController < ApplicationController
   before_action :require_user
  before_action :require_admin

  def home
       @user = User.all
  end
  def delete_account
       @user = User.find_by(user: params[:admin] [:user])

       if @user
                User.delete(@user)
                redirect_to '/admin'
              end
       else
             session[:delete] = @users
       end
  end

  private
  def params_user
     params.require(:admin).permit(:user)
  end

