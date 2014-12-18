class User < ActiveRecord::Base
  has_many :efforts
  has_many :splits, through: :efforts
  has_many :routes, through: :efforts

  has_secure_password
end
