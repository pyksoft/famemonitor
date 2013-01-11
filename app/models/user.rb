class User < ActiveRecord::Base
  attr_accessible :provider, :uid, :name, :email
  extend FriendlyId
    friendly_id :name, use: :slugged
  has_many :stories
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
      end
    end
  end

end
