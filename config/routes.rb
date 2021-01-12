Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  
  get "/users", to: "users#index"
  get "/users/:username", to: "users#show"
  get "/users/getUser", to: "users#getUser"
  post "/users", to: "users#create"
end
