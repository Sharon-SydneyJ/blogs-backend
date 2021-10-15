class UserCommentSerializer < ActiveModel::Serializer
  attributes :id, :remark
  has_many :blogposts
  has_many :comments, serializer: CommentUserSerializer

end
