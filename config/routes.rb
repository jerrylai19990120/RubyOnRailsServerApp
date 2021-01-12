Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "0.0.0.0/users", to: "users#index"
  post "0.0.0.0/users", to: "users#create"
  get "0.0.0.0:3000/users/:username", to: "users#show"
  
end
