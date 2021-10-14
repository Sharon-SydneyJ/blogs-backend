class UserBlogpostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img_url

  has_many :comments 
  has_many :blogposts, serializer: BlogpostUserSerializer
end
