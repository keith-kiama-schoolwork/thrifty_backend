class ApplicationController < ActionController::API
    include ActionController::Cookies
    # before_action :authorize

 # Allow cross-origin requests
  after_action :allow_cross_origin_requests

  private

  # Allow cross-origin requests
  def allow_cross_origin_requests
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
  end

  # def authorize
  #   return render json: { errors: ["Not authorized"] }, status: :unauthorized unless session.include? :user_id
  # end
end
