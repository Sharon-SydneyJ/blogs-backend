class BlogpostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img_url
  has_one :user
end
