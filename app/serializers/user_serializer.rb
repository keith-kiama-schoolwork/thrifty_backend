class UserSerializer < ActiveModel::Serializer
  has_one :account
  attributes :id,:name,:email,:password,:user_review,:product_reviews

  has_one :user_review
  has_many :product_reviews

end