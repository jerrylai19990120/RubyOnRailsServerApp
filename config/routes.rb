Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "users#index"
  resources :users

  GET "/users", to: "users#index"
  GET "/users/:username", to: "users#show"
  GET "/users/getUser", to: "users#getUser"
  POST "/users/createUser", to: "users#createUser"
end
