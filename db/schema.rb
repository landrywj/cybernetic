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

ActiveRecord::Schema.define(version: 20140321155814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "display_name",    limit: 255
    t.string   "nickame",         limit: 255
    t.string   "primary_email",   limit: 255
    t.string   "secondary_email", limit: 255
    t.string   "screen_name",     limit: 255
    t.string   "work_phone",      limit: 255
    t.string   "home_phone",      limit: 255
    t.string   "fax_number",      limit: 255
    t.string   "mobile_number",   limit: 255
    t.string   "home_address",    limit: 255
    t.string   "home_address2",   limit: 255
    t.string   "home_city",       limit: 255
    t.string   "home_state",      limit: 255
    t.string   "home_zip_code",   limit: 255
    t.string   "home_country",    limit: 255
    t.string   "work_address",    limit: 255
    t.string   "work_address_2",  limit: 255
    t.string   "work_city",       limit: 255
    t.string   "work_state",      limit: 255
    t.string   "work_zip_code",   limit: 255
    t.string   "work_country",    limit: 255
    t.string   "job_title",       limit: 255
    t.string   "department",      limit: 255
    t.string   "organization",    limit: 255
    t.string   "web_page_1",      limit: 255
    t.string   "web_page_2",      limit: 255
    t.string   "birth_year",      limit: 255
    t.string   "birth_month",     limit: 255
    t.string   "birth_day",       limit: 255
    t.string   "custom_1",        limit: 255
    t.string   "custom_2",        limit: 255
    t.string   "custom_3",        limit: 255
    t.string   "custom_4",        limit: 255
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["display_name"], name: "index_contacts_on_display_name", using: :btree

  create_table "devlogs", force: :cascade do |t|
    t.text     "message"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devlogs", ["project_id"], name: "index_devlogs_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "technology"
    t.string   "name"
    t.text     "procedure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipes", ["technology"], name: "index_recipes_on_technology", using: :btree

  create_table "snippets", force: :cascade do |t|
    t.string   "technology"
    t.string   "language"
    t.text     "code"
    t.string   "plain_code"
    t.string   "highlighted_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "duration"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id", using: :btree

  create_table "use_cases", force: :cascade do |t|
    t.string   "user",       limit: 255
    t.text     "story"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "use_cases", ["project_id"], name: "index_use_cases_on_project_id", using: :btree

  create_table "users", force: :cascade do |t|
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
