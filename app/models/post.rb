class Post < ApplicationRecord
  belongs_to :user
  has_one :category
  has_many :comments
end
