class Lecture < ActiveRecord::Base
  belongs_to :department
  has_and_belongs_to_many :users
  has_many :posts
  self.per_page = 10
end
