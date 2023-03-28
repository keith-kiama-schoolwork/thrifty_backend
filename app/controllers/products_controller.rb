class ProductsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        product = Product.all
        render json:product,status: :ok
    end

    def show
        product = Product.find_by!(id: params[:id])
        render json: product, status: :ok
    end

    def create
        product = Product.create!(product_params)
        render json: product, status: :created
    end

    def update
        product = Product.find_by!(id: params[:id])
        product.update(product_params)
        render json: product
    end

    def destroy
        product = Product.find_by!(id: params[:id])
        product.destroy
        head :no_content
    end

    private

    def render_not_found
        render json: { error: "Product not found" }, status: :not_found
    end

    def product_params
        params.permit(:image_url, :name, :price, :category)
    end
end
