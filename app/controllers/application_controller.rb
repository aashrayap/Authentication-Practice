class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # USERS= {"foo"=> "bar"}


  # before_action :authenticate_user
  
  # def authenticate_user
  #   authenticate_or_request_with_http_digest do |username, password|
  #     USERS[username]
#   end
# end

private
def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  # Will turn the current_user into a boolean
  # e.g. `nil` becomes false and anything else true.
  def signed_in_user?
    !!current_user
  end
  helper_method :signed_in_user?


  # Simply store our ID in the session
  # and set the current user instance var
  def sign_in(user)
    session[:user_id] = user.id
    @current_user = user
  end
end
