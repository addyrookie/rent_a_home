# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100626115530) do

  create_table "bedrooms", :force => true do |t|
    t.integer  "bedroom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
  end

  create_table "countries", :force => true do |t|
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "furnishings", :force => true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "houses", :force => true do |t|
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.text     "address"
    t.string   "location"
    t.integer  "built_area"
    t.integer  "rent"
    t.integer  "housetype_id"
    t.integer  "bedroom_id"
    t.integer  "furnishing_id"
    t.integer  "user_id"
    t.string   "tagline"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "housetypes", :force => true do |t|
    t.string   "housetype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
