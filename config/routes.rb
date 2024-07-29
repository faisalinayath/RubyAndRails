Rails.application.routes.draw do
  root to: "main#index"  # Defines the root or entry point of the application

  get "password",to:"password#edit", as: :edit_password
  patch "password",to:"password#update",as: :update_password_path

  get "password/reset", to:"password_resets#new"
  post "password/reset", to:"password_resets#create"
  get "password/reset/edit", to:"password_resets#edit"
  post "password/reset/edit", to:"password_resets#update"


  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  get 'sign_in',to:"session#new"
  post 'sign_in',to:"session#create"

  delete "logout", to: "session#destroy"  # Comma added here

  get "about", to: "about#index"
end
