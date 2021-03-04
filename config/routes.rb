Rails.application.routes.draw do
  get "todos", to: "todos#index"
  get "todos/:id", to: "todos#show"

  post "todos", to: "todos#add"
  delete "todos/:id", to: "todos#delete"
  put "todos/:id", to: "todos#updatechecked"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
