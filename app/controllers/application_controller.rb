class ApplicationController < ActionController::Base
    # primary_abstract_class
    include ActionController::Cookies
    # protect_from_forgery with: :null_session
end
