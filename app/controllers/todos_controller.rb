class TodosController < ApplicationController

    def get_todos
        email = session[:email]
        if email

        render json: Todo.all
        else
            render json: {message: "unauthorized"}, status: :unauthorized
        end
    end

     def create 
    #     title = todo_params[:title]
    #     description = todo_params[:description]
    #     priority = todo_params[:priority]
    
    #     #add todos in db
    #     todo = Todo.create(title: title, description: description, priority: priority)
    #     render json: todo
    #   

    user = cookies[:email]
    if user
        todo = Todo.create(todo_params)
        if todo.valid?
            render json: todo
        else
            render json: todo.errors
        end

    else
        render json: {message: "You are not logged in"}, status: :unauthorized
    end

   
end

def update
    id = params[:id]
    todo = Todo.find(id.to_i)
    todo.update(todo_params)
    render json: {success: "Updated todo params successfully"}
end

def destroy
    id = params[:id]
    todo = Todo.find(id.to_i)
    todo.destroy
    render json: {success: "Deleted todo successfully"}
end


      private

      def todo_params
        params.permit(:title, :description, :priority, :status)
      end
    
end
