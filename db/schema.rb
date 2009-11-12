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

ActiveRecord::Schema.define(:version => 20091112002614) do

  create_table "click_to_talks", :force => true do |t|
    t.string   "phone_number"
    t.string   "when"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone_ext"
    t.string   "referer"
    t.string   "ip_address"
    t.string   "user_agent"
  end

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "subject"
    t.string   "phone_number"
    t.string   "email_address"
    t.string   "message"
    t.string   "referer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploads", :force => true do |t|
    t.string   "original_filename"
    t.string   "filename"
    t.string   "content_type"
    t.string   "company"
    t.string   "person"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
