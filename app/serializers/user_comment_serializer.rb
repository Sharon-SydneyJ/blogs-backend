class UserCommentSerializer < ActiveModel::Serializer
  attributes :id, remark
  has_many :blogposts
  has_many :ccomments, serializer: CommentUserSerializer

end
