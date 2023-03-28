class ProductReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        product_reviews = ProductReview.all
        render json: product_reviews,status: :ok
    end

        def show
        product_reviews = ProductReview.find_by!(id: params[:id])
        render json: product_reviews,status: :ok
    end

    def create
        product_reviews = ProductReview.create!(product_review_params)
        render json: product_reviews, status: :created
    end

    def update
        product_reviews = ProductReview.find_by!(id: params[:id])
        product_reviews.update(product_review_params)
        render json: product_reviews
    end

    def destroy
        product_reviews = ProductReview.find_by!(id: params[:id])
        product_reviews.destroy
        head :no_content
    end

    private
 
    def render_not_found
        render json: { error: "Product Review not found" }, status: :not_found
    end

    def product_review_params
        params.permit(:product_id,:user_id,:comment)
    end
end
