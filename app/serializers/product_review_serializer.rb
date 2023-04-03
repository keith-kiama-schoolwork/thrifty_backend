class ProductReviewSerializer < ActiveModel::Serializer
  attributes :user_id,:comment
  belongs_to :product
end
