# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130118055217) do

  create_table "celebrities", :force => true do |t|
    t.string   "name"
    t.string   "aka"
    t.date     "dob"
    t.string   "birth_place"
    t.string   "gender"
    t.string   "race"
    t.string   "orientation"
    t.string   "occupation"
    t.string   "political_affiliation"
    t.string   "nationality"
    t.text     "description"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "zodiac_sign_id"
    t.string   "slug"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "website"
    t.string   "blog"
    t.string   "youtube"
    t.string   "flickr"
    t.string   "wikipedia"
  end

  add_index "celebrities", ["birth_place"], :name => "index_celebrities_on_birth_place"
  add_index "celebrities", ["blog"], :name => "index_celebrities_on_blog"
  add_index "celebrities", ["facebook"], :name => "index_celebrities_on_feacebook"
  add_index "celebrities", ["flickr"], :name => "index_celebrities_on_flickr"
  add_index "celebrities", ["gender"], :name => "index_celebrities_on_gender"
  add_index "celebrities", ["name"], :name => "index_celebrities_on_name"
  add_index "celebrities", ["nationality"], :name => "index_celebrities_on_nationality"
  add_index "celebrities", ["occupation"], :name => "index_celebrities_on_occupation"
  add_index "celebrities", ["orientation"], :name => "index_celebrities_on_orientation"
  add_index "celebrities", ["political_affiliation"], :name => "index_celebrities_on_political_affiliation"
  add_index "celebrities", ["race"], :name => "index_celebrities_on_race"
  add_index "celebrities", ["slug"], :name => "index_celebrities_on_slug", :unique => true
  add_index "celebrities", ["twitter"], :name => "index_celebrities_on_twitter"
  add_index "celebrities", ["website"], :name => "index_celebrities_on_website"
  add_index "celebrities", ["wikipedia"], :name => "index_celebrities_on_wikipedia"
  add_index "celebrities", ["youtube"], :name => "index_celebrities_on_youtube"
  add_index "celebrities", ["zodiac_sign_id"], :name => "index_celebrities_on_zodiac_sign_id"

  create_table "data_dumps", :force => true do |t|
    t.text     "dump"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fan_pages", :force => true do |t|
    t.integer  "celebrity_id"
    t.integer  "user_id"
    t.string   "url"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "fan_pages", ["celebrity_id"], :name => "index_fan_pages_on_celebrity_id"
  add_index "fan_pages", ["name"], :name => "index_fan_pages_on_name"
  add_index "fan_pages", ["url"], :name => "index_fan_pages_on_url"
  add_index "fan_pages", ["user_id"], :name => "index_fan_pages_on_user_id"

  create_table "stories", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.text     "body"
    t.integer  "celebrity_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "stories", ["celebrity_id"], :name => "index_stories_on_celebrity_id"
  add_index "stories", ["title"], :name => "index_stories_on_title"
  add_index "stories", ["user_id"], :name => "index_stories_on_user_id"

  create_table "twitter_counts", :force => true do |t|
    t.integer  "celebrity_id"
    t.integer  "followers"
    t.integer  "following"
    t.integer  "tweets"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "twitter_counts", ["celebrity_id"], :name => "index_twitter_counts_on_celebrity_id"
  add_index "twitter_counts", ["followers"], :name => "index_twitter_counts_on_followers"
  add_index "twitter_counts", ["following"], :name => "index_twitter_counts_on_following"
  add_index "twitter_counts", ["tweets"], :name => "index_twitter_counts_on_tweets"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "users", ["slug"], :name => "index_users_on_slug", :unique => true

end
