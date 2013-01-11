class Story < ActiveRecord::Base
  attr_accessible :body, :celebrity_id, :title, :user_id
end
