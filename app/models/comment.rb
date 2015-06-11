class Comment < ActiveRecord::Base
  belongs_to :chirp
  belongs_to :user
end
