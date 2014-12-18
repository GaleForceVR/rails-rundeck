class Route < ActiveRecord::Base
  has_many :efforts
  has_many :splits, through: :efforts
  has_many :users, through: :efforts
end
