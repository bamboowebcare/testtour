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

ActiveRecord::Schema.define(version: 20140520075608) do

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "countries", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cycling_teams", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "logo"
    t.boolean  "tdf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "poules", force: true do |t|
    t.string   "name"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "poules", ["user_id"], name: "index_poules_on_user_id"

  create_table "riders", force: true do |t|
    t.text     "name"
    t.date     "birthday"
    t.boolean  "tdf"
    t.boolean  "allround"
    t.boolean  "climber"
    t.boolean  "sprinter"
    t.boolean  "classic"
    t.boolean  "yellow"
    t.boolean  "green"
    t.boolean  "white"
    t.boolean  "polka"
    t.integer  "cycling_team_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "riders", ["country_id"], name: "index_riders_on_country_id"
  add_index "riders", ["cycling_team_id"], name: "index_riders_on_cycling_team_id"

  create_table "tour_teams", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "poule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tour_teams", ["poule_id"], name: "index_tour_teams_on_poule_id"
  add_index "tour_teams", ["user_id"], name: "index_tour_teams_on_user_id"

  create_table "tour_teams_riders", force: true do |t|
    t.integer  "tour_team_id"
    t.integer  "rider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tour_teams_riders", ["rider_id"], name: "index_tour_teams_riders_on_rider_id"
  add_index "tour_teams_riders", ["tour_team_id"], name: "index_tour_teams_riders_on_tour_team_id"

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
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
