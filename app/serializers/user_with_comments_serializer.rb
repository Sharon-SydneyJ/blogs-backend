class UserWithCommentsSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :user_name
  has_many :comments
end
