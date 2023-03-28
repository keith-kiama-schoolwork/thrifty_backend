class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        users = User.all
        render json: users,status: :ok,include: :account
    end

    def show
        user = User.find_by!(id: params[:id])
        render json: user,include: :account
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def update
        user = User.find_by!(id: params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find_by!(id: params[:id])
        user.destroy
        head :no_content
    end

    private

    def render_not_found
        render json: { error: "User not found" }, status: :not_found
    end

    def user_params
        params.permit(:name,:email,:password)
    end
end
