class BlogpostCommentSerializer < ActiveModel::Serializer
  attributes :id, :remark

  belongs_to :user 
end
