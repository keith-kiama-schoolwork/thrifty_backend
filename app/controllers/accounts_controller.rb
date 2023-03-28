class AccountsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        accounts = Account.all
        render json: accounts,status: :ok
    end

    def show
        account = Account.find_by!(id: params[:id])
        render json: account, include: :user
    end

    def destroy
        account = Account.find_by!(id: params[:id])
        account.destroy    
        head :no_content    
    end

    private

    def render_not_found
        render json: { error: "Account not found" }, status: :not_found
    end
end
