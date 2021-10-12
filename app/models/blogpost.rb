class Blogpost < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  accepts_nested_attributes_for :comments
end
