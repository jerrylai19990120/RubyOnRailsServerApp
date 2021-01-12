Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "users#index"

  get "/users", to: "users#index"
  get "/users/:username", to: "users#show"
  get "/getUser", to: "users#getUser"
  post "/createUser", to: "users#createUser"
end
