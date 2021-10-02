class User < ApplicationRecord
    has_many :blogposts, dependent: :destroy
    has_many :comments, through: :blogposts
end
