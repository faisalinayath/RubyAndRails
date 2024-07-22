Rails.application.routes.draw do
  root to:"main#index"  #To define the entry point of the route or root to:"main#index"
  get "about", to: "about#index"
end
