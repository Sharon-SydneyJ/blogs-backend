class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blogpost
  accepts_nested_attributes_for :user
end
