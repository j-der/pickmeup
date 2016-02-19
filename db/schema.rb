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

ActiveRecord::Schema.define(version: 20160219221029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rides", force: :cascade do |t|
    t.string   "title"
    t.string   "details"
    t.decimal  "origin_latitude"
    t.decimal  "origin_longitude"
    t.decimal  "destination_latitude"
    t.decimal  "destination_longitude"
    t.integer  "seats",                 default: 1
    t.integer  "users_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "rides", ["users_id"], name: "index_rides_on_users_id", using: :btree

  create_table "seats", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "rides_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seats", ["rides_id"], name: "index_seats_on_rides_id", using: :btree
  add_index "seats", ["users_id"], name: "index_seats_on_users_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "password_digest"
    t.boolean  "driver"
    t.integer  "rating"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
