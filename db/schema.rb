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

ActiveRecord::Schema.define(:version => 20121026185621) do

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
  end

  add_index "celebrities", ["birth_place"], :name => "index_celebrities_on_birth_place"
  add_index "celebrities", ["gender"], :name => "index_celebrities_on_gender"
  add_index "celebrities", ["name"], :name => "index_celebrities_on_name"
  add_index "celebrities", ["nationality"], :name => "index_celebrities_on_nationality"
  add_index "celebrities", ["occupation"], :name => "index_celebrities_on_occupation"
  add_index "celebrities", ["orientation"], :name => "index_celebrities_on_orientation"
  add_index "celebrities", ["political_affiliation"], :name => "index_celebrities_on_political_affiliation"
  add_index "celebrities", ["race"], :name => "index_celebrities_on_race"
  add_index "celebrities", ["slug"], :name => "index_celebrities_on_slug", :unique => true
  add_index "celebrities", ["zodiac_sign_id"], :name => "index_celebrities_on_zodiac_sign_id"

  create_table "data_dumps", :force => true do |t|
    t.text     "dump"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
