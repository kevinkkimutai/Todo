Rails.application.routes.draw do
  resources :users

  get '/', to: "todos#get_todos"

  post '/create', to: "todos#create"

  put '/update/:id', to: "todos#update"

  post '/login', to: "users#login"

  delete '/destroy/:id', to: "todos#destroy"

end
