Rails.application.routes.draw do
  get "todos", to: "todos#index"
  get "todos/:id", to: "todos#show"
  get "/", to: "home#index"
  post "todos", to: "todos#add"
  delete "todos/:id", to: "todos#delete"
  put "todos/:id", to: "todos#updatechecked"
  get "/new_user", to: "users#new"
  get "/new_session", to: "sessions#new"
  post "/users", to: "users#adduser"
  post "/new_session", to: "sessions#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
