class UsersController < ApplicationController
  #Prepration de l'ajout du nouvel utilisateur
  def signup
      @user = User.new
  end

 # Creation du compte
  def create
         @user = User.new(params_user)

@user_verif = User.find_by(user:  params[:user] [:user])
@email_verif = User.find_by(email: params[:user][:email])

          if @user_verif
               session[:user_error] = @user_verif
               redirect_to '/signup'
            elsif @email_verif
                session[:email_error] ||= @email_verif
                redirect_to '/signup'

           else
               if @user.save

                session[:user_id] = @user.id
                session[:inscription_good] = @user
                redirect_to '/login'
      else
        redirect_to "/signup"

       end
     end

  end

  #Recuperation des valeurs du formulaire d'inscription
  private
  def params_user
        params.require(:user).permit(:user, :email, :password, :password_confirm)
  end

  #Recuperation de l'identifiant envoyé lors de l'inscription
  def params_user_verif
    params.require(:user).permit(:user)
  end

  #Recuperation de l'email envoyé lors de l'inscription
    def params_email_verif
      params.require(:user).permit(:email)
    end
end
