class UserReviewSerializer < ActiveModel::Serializer
  attributes :user_id,:comment
  belongs_to :user
end
