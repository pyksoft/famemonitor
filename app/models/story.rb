class Story < ActiveRecord::Base
  attr_accessible :body, :celebrity_id, :title, :user_id
  belongs_to :user
  belongs_to :celebrity
end
