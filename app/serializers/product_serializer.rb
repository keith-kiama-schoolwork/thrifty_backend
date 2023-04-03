class ProductSerializer < ActiveModel::Serializer
  attributes :id,:image_url,:name,:price,:category

  has_many :product_reviews
end
