Rails.application.routes.draw do
  resources :users

  get '/', to: "todos#get_todos"

  post '/create', to: "todos#create"

  put '/update/:id', to: "todos#update"

  delete '/destroy/:id', to: "todos#destroy"

end
