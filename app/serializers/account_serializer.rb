class AccountSerializer < ActiveModel::Serializer
  attributes :id,:account_number,:user_id
end
