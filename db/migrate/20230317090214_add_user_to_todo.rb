class AddUserToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :user_id, :integer, :null => false, :default => 1
  end
end
