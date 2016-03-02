class Department < ActiveRecord::Base
  has_many :lectures
end
