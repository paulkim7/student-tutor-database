class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :text
  validates_presence_of :price 
  validates :price, :numericality => { :greater_than_or_equal_to => 0 }

  belongs_to :user
  belongs_to :lecture
end
