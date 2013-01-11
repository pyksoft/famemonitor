class FanPage < ActiveRecord::Base
  attr_accessible :celebrity_id, :description, :name, :url, :user_id
end
