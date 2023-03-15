class Todo < ApplicationRecord

    enum :status, [:CREATED, :IN_PROGRESS, :CANCELED, :COMPLETED]
    enum :priority, [:LOW, :MEDIUM, :HIGH]
    
end
