class TodosController < ApplicationController

    def get_todos
        Todo.all
    end
    
end
