class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # USERS= {"foo"=> "bar"}


  # before_action :authenticate_user
  # private
  # def authenticate_user
  #   authenticate_or_request_with_http_digest do |username, password|
  #     USERS[username]
#   end
# end
end
