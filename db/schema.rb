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

ActiveRecord::Schema.define(:version => 20091025001657) do

  create_table "addresses", :force => true do |t|
    t.integer  "institution_id"
    t.integer  "user_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artifact_bundles", :force => true do |t|
    t.integer  "bschool_app_id"
    t.integer  "required"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artifacts", :force => true do |t|
    t.integer  "artifact_bundle_id"
    t.integer  "sequence"
    t.string   "subsequence"
    t.text     "prompt"
    t.integer  "max_length"
    t.string   "artifact_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bschool_apps", :force => true do |t|
    t.integer  "institution_id"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institution_people", :force => true do |t|
    t.integer  "institution_id"
    t.integer  "person_id"
    t.string   "institution_person_type"
    t.string   "title"
    t.string   "degree"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutions", :force => true do |t|
    t.string   "full_name"
    t.string   "short_name"
    t.string   "abbreviation"
    t.string   "institution_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "full_name"
    t.string   "preferred_name"
    t.string   "abbreviation"
    t.date     "dob"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "rounds", :force => true do |t|
    t.integer  "bschool_app_id"
    t.integer  "round_number"
    t.datetime "deadline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.string   "user_type"
    t.datetime "deleted_at"
    t.integer  "person_id"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
