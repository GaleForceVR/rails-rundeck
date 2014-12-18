class Effort < ActiveRecord::Base
  has_many :splits
  belongs_to :user
  belongs_to :route
end
