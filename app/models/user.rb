class User < ApplicationRecord
    

    has_many :blogposts, dependent: :destroy
    has_many :comments, through: :blogposts

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :user_name, uniqueness: true, presence: true
    validates :email, uniqueness: true, presence: true
end
