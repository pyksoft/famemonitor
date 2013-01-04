class Celebrity < ActiveRecord::Base
  zodiac_reader :dob
  extend FriendlyId
    friendly_id :name, use: :slugged
  attr_accessible :zodiac_sign_id, :aka, :birth_place, :description, :dob, :gender, :name, :nationality, :occupation, :orientation, :political_affiliation, :race
  validates :name, :uniqueness => {:scope => :description}
  
  def self.dead
    where("dob < ?", 100.years.ago)
  end
 
end