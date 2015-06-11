class User < ActiveRecord::Base
  has_many :chirps
  has_many :comments
end
