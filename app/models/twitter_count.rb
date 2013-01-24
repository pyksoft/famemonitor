class TwitterCount < ActiveRecord::Base
  attr_accessible :celebrity_id, :followers, :following, :tweets
end
