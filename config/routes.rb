Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/home", to: "users#index"
  post "/users/:username/:password", to: "users#create"
  get "/users/:id", to: "users#show"
  delete "/users/:id", to: "users#delete"
  
end
