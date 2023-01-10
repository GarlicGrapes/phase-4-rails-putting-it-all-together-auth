# class UsersController < ApplicationController
#     skip_before_action :authorize, only: :create
#     # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    

#     def create
#         user = User.create!(user_params)
#         session[:user_id] = user.id
#         render json: user, status: :created
#     end

#     def show
#         render json: @current_user
#     end

#     private

#     def user_params
#         params.permit(:username, :password, :password_confirmation, :image_url, :bio)
#     end

#     # def render_unprocessable_entity(exception)
#     #     render json: {errors: exception.record.errors}, status: :render_unprocessable_entity
#     # end
# end

class UsersController < ApplicationController
    skip_before_action :authorize, only: :create
  
    def create
      user = User.create!(user_params)
      session[:user_id] = user.id
      render json: user, status: :created
    end
  
    def show
      render json: @current_user
    end
  
    private
  
    def user_params
      params.permit(:username, :password, :password_confirmation, :image_url, :bio)
    end
  
  end