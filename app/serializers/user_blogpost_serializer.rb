class UserBlogpostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img_url

  has_many :comments
end
