class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content
 
 
  belongs_to :blogpost
  belongs_to :user
end
