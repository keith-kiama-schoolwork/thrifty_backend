class SessionsController < ApplicationController
  before_action :authorize
  skip_before_action :authorize,only: [:create]
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user
    else
        render json: {error: "Invalid email or password"}, status: :unauthorized
    end
  end

  def destroy
    session.delete :user_id
    head :no_content
  end

  private

  def authorize
    return render json: {message: "Kindly Login"} unless session.include? :user_id
  end
end

  
  