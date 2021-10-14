class CommentUserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :user_name
  belongs_to :blogposts
end
