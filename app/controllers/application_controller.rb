class ApplicationController < ActionController::Base
    # primary_abstract_class
    protect_from_forgery with: :null_session
end
