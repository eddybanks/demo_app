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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170305065919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "film_location_summaries", force: :cascade do |t|
    t.string   "title"
    t.integer  "release_year"
    t.string   "locations"
    t.text     "fun_facts"
    t.string   "production_company"
    t.string   "distributor"
    t.string   "director"
    t.string   "writer"
    t.string   "actor1"
    t.string   "actor2"
    t.string   "actor3"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "park_summaries", force: :cascade do |t|
    t.string   "park_name"
    t.string   "park_type"
    t.string   "park_service_area"
    t.string   "psa_manager"
    t.string   "email"
    t.string   "number"
    t.string   "zipcode"
    t.float    "acreage"
    t.integer  "sup_dist"
    t.integer  "parkid"
    t.string   "location"
    t.string   "lat"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "username"
    t.date     "date_of_birth"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
