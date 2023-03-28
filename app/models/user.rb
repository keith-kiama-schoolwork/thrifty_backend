class User < ApplicationRecord
    has_one :account
    has_many :product_reviews
    has_one :user_review
    has_many :products, through: :product_reviews
end
