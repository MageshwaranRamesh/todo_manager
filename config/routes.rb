Rails.application.routes.draw do
  get "todos", to: "todos#index"
  get "todos/:id", to: "todos#show"
  get "/", to: "home#index"
  post "todos", to: "todos#add"
  delete "todos/:id", to: "todos#delete"
  put "todos/:id", to: "todos#updatechecked"
  get "/user/new", to: "users#new"
  post "/users", to: "users#adduser"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
