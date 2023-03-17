class TodosController < ApplicationController

    def get_todos
        render json: Todo.all
    end

     def create 
    #     title = todo_params[:title]
    #     description = todo_params[:description]
    #     priority = todo_params[:priority]
    
    #     #add todos in db
    #     todo = Todo.create(title: title, description: description, priority: priority)
    #     render json: todo
    #   

    todo = Todo.create(todo_params)
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
