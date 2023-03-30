class User < ApplicationRecord
    has_secure_password
    has_one :account,dependent: :destroy
    has_many :product_reviews
    has_one :user_review
    has_many :products, through: :product_reviews

    validates :email, presence: true, uniqueness: true
end
