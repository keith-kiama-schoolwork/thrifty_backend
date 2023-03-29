class ProductReviewSerializer < ActiveModel::Serializer
  attributes :id,:product,:product_id,:user_id,:comment
  belongs_to :product
end
