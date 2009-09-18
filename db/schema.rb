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

ActiveRecord::Schema.define(:version => 20090918111130) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "caption"
    t.string   "author"
    t.integer  "picture_id"
    t.string   "geotag"
    t.string   "georange"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "issue_id"
  end

  create_table "images", :force => true do |t|
    t.text     "source"
    t.string   "creator"
    t.string   "format"
    t.string   "file"
    t.string   "geotag"
    t.string   "georange"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", :force => true do |t|
    t.date     "publish_on"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "newspaper_id"
  end

  create_table "newspapers", :force => true do |t|
    t.string   "name"
    t.string   "periodicity"
    t.string   "destination_scope"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
