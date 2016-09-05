Rails.application.routes.draw do
  resources :users

  resource :session, :only => [:create]
  get "login" => "sessions#new"
  # delete "logout" => "sessions#destroy"

end
