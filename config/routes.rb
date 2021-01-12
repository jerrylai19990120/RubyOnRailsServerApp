Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "/users", to: "users#index"
  post "/users/:username/:password", to: "users#create"
  get "/users/:username", to: "users#show"
  
end
