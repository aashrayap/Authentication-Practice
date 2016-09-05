class SessionsController < ApplicationController
   def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])

      # we'll put this logic into a simple helper
      sign_in(@user)
      flash[:success] = "You've successfully signed in"
      redirect_to users_path
    else
      flash.now[:error] = "We couldn't sign you in"
      render :new
    end
  end
end
