class UsersController < ApplicationController


def index
    render json: {data: User.all}
end

    def create
        user = User.create(user_params)
        cookies[:email] = user.email
        render json: { data: user, message: "User created sucessfully"}
    end

    def update
        id = params[:id].to_i
        user = User.find(id)
        user.update(user_params)
        render json: { message: "User updated sucessfully"}
    end

    def login
        email = params[:email]
        session[:email] = email
        render json: {message: "User logged in sucessfully"}
    end
    #TODO: logout
    

    private

    def user_params
        params.permit(:email, :password)
    end
end
