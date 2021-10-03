class Blogpost < ApplicationRecord

  # scope :by_name, ->(name) { where("title LIKE ?", "%#{name}%") }
  # def summary
  #   "#{title}"
  # end
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
end
