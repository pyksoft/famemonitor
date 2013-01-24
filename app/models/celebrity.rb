class Celebrity < ActiveRecord::Base
  after_update :twitter_counts
  zodiac_reader :dob
  extend FriendlyId
    friendly_id :name, use: :slugged
  attr_accessible :zodiac_sign_id, :aka, :birth_place, :description, :dob, :gender, :name, :nationality, :occupation, :orientation, :political_affiliation, :race,
    :id, :created_at, :updated_at, :slug, :facebook, :website, :flickr, :blog, :youtube, :wikipedia, :twitter
  validates :name, :uniqueness => {:scope => :description}
  has_many :stories
  def self.dead
    where("dob < ?", 100.years.ago)
  end

  def twitter_counts
    TwitterCounter.perform_async("https://mobile.twitter.com/"+self.twitter,self.id)
  end
 
end
