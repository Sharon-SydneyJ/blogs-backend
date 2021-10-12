class CommentSerializer < ActiveModel::Serializer
  attributes :id, :remark
 
 
  belongs_to :user
  belongs_to :blogpost
end
