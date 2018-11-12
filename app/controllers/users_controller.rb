class UsersController < ApplicationController
    def index
        render json: User.all
    end
  
    def show
        render json: User.find(params[:id])
    end
  
    def create
        render json: User.create(user_params)
    end
  
    def update
        user.find(params[:id]).update(user_params)
        render json: User.find(params[:id])
    end
  
    def destroy
        render json: User.find(params[:id]).destroy
    end
  
    private
    def user_params
        params.require(:user).permit(:name, :color, :breed, :image, :quote, :floof)
    end

end


