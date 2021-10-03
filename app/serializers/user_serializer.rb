class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name
  
  has_many :blogposts, serializer: UserBlogpostSerializer
  
  
end
