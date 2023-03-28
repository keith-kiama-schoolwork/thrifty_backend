class UserReviewSerializer < ActiveModel::Serializer
  attributes :id,:user_id,:comment
  belongs_to :user
end
