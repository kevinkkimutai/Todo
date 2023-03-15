Rails.application.routes.draw do

  get '/', to: "todo#get_todos"

end
