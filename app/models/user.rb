class User < ApplicationRecord
  validates_presence_of :name, :username
  has_many :blogs
end
