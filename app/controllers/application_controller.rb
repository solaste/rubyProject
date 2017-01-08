class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

#Verification de l'utilisateur
  def require_user
       redirect_to '/login' unless current_user

  end
  #Verification si l'utilisateur est un admin
  def require_admin
          redirect_to '/' unless current_user.admin? 
         end
  #Verification de la connexion de l'utilisateur
  def current_user
         @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
end
