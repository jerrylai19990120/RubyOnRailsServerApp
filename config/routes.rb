Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :show]
  
  get "/users", to: "users#index"
  post "/users", to: "users#create"
  get "/users/:username", to: "users#show"
  
end
