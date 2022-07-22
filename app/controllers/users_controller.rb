class UsersController < ApplicationController
    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user
        else
            render json: {errror: 'User not authorized'}, status: :unauthorized
        end
    end
end
