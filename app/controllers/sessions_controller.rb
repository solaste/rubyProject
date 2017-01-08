class SessionsController < ApplicationController
   #Page de Connexion
  def login
  end

  #Verification des informations aupres de la base de donnée
  def connect

           @user = User.find_by_email(params[:session] [:email])
           if @user && @user.authenticate(params[:session] [:password])
             session[:user_id] = @user.id
             session[:connected] = @user
             redirect_to "/home"

           else
                render :login


               end
  end

  #Deconnexion de l'utilisateur
  def destroy
        session[:user_id] = nil
        redirect_to '/login'
  end
end
