class UserReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

     def index
        user_reviews = UserReview.all
        render json: user_reviews,status: :ok
     end

    def show
        user_review = UserReview.find_by!(id: params[:id])
        render json: user_review,status: :ok
    end

    def create
        user_review = UserReview.create!(user_review_params)
        render json: user_review, status: :created
    end

    def update
        user_review = UserReview.find_by!(id: params[:id])
        user_review.update(user_review_params)
        render json: user_review
    end

    def destroy
        user_review = UserReview.find_by!(id: params[:id])
        user_review.destroy
        head :no_content
    end

  private
  
    def render_not_found
        render json: { error: "User Review not found" }, status: :not_found
    end

    def user_review_params
        params.permit(:user_id,:comment)
    end
end
