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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140317205756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "display_name"
    t.string   "nickame"
    t.string   "primary_email"
    t.string   "secondary_email"
    t.string   "screen_name"
    t.string   "work_phone"
    t.string   "home_phone"
    t.string   "fax_number"
    t.string   "mobile_number"
    t.string   "home_address"
    t.string   "home_address2"
    t.string   "home_city"
    t.string   "home_state"
    t.string   "home_zip_code"
    t.string   "home_country"
    t.string   "work_address"
    t.string   "work_address_2"
    t.string   "work_city"
    t.string   "work_state"
    t.string   "work_zip_code"
    t.string   "work_country"
    t.string   "job_title"
    t.string   "department"
    t.string   "organization"
    t.string   "web_page_1"
    t.string   "web_page_2"
    t.string   "birth_year"
    t.string   "birth_month"
    t.string   "birth_day"
    t.string   "custom_1"
    t.string   "custom_2"
    t.string   "custom_3"
    t.string   "custom_4"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["display_name"], name: "index_contacts_on_display_name", using: :btree

  create_table "recipes", force: true do |t|
    t.string   "technology"
    t.string   "name"
    t.text     "procedure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipes", ["technology"], name: "index_recipes_on_technology", using: :btree

  create_table "snippets", force: true do |t|
    t.string   "technology"
    t.text     "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
