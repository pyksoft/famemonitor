class TwitterCounter
  include Sidekiq::Worker

  def perform(url,id)
    @agent = Mechanize.new
    @agent.user_agent_alias = "Windows IE 6"
    @agent.verify_mode = OpenSSL::SSL::VERIFY_NONE
    page = @agent.get(url)

    user = {}

    user[:fullname] = page.at('div.fullname').text.strip
    user[:username] = page.at('div.username').text.strip
    user[:location] = page.at('div.location').text.strip
    user[:bio] = page.at('div.bio').text.strip
    user[:url] = page.at('div.url').text.strip
    user[:tweets] = page.at('div[text()="Tweets"]').parent.at('div').text.gsub(',','')
    user[:following] = page.at('div[text()="Following"]').parent.at('div').text.gsub(',','')
    user[:followers] = page.at('div[text()="Followers"]').parent.at('div').text.gsub(',','')

    TwitterCount.create!(celebrity_id:id, tweets: user[:tweets].to_i, followers: user[:followers].to_i, following: user[:following].to_i)
    puts user
  end

end


if __FILE__ == $0
  require 'pry'
  require_relative '../../scraper'
  job = Job.new('{"content_provider":"twitter", "module_type":"review", "url":"https://mobile.twitter.com/nikolaimanek"}')
  Scraper.new(job).run
end

