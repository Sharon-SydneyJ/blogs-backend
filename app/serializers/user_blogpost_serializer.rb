class UserBlogpostSerializer < ActiveModel::Serializer
  attributes :id, :title, :img_url

  has_many :comments
end
