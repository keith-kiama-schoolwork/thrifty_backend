class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    before_action :authorize
    skip_before_action :authorize, only: [:create]


    def index
        users = User.all
        render json: users,status: :ok
    end

    def show
        user = User.find(session[:user_id])
        render json: user
    end

    def create
        user = User.create!(user_params)
        account_number = Faker::Bank.account_number(digits: 10)
        user.create_account!(account_number: account_number)
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
        params.permit(:name,:email,:image_url,:password)
    end

    def authorize
        return render json: {message: "Kindly Login"} unless session.include? :user_id
    end

    def render_unprocessable_entity(exception)
        render json: {errors: exception.record.errors.full_messages},status: :unprocessable_entity
    end

end
