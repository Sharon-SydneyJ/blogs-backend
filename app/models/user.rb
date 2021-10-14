class User < ApplicationRecord

    default_scope { order(created_at: :desc)}
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :user_name, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true

    has_many :blogposts, dependent: :destroy
    has_many :comments, through: :blogposts
    accepts_nested_attributes_for :blogposts, reject_if: proc { |attributes| attributes['title'].blank? }


    
end
