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

ActiveRecord::Schema.define(version: 20171218155638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "movie"
    t.text     "about"
    t.string   "actor"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fixture_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fixture_types_locations", id: false, force: :cascade do |t|
    t.integer "fixture_type_id"
    t.integer "location_id"
  end

  add_index "fixture_types_locations", ["fixture_type_id"], name: "index_fixture_types_locations_on_fixture_type_id", using: :btree
  add_index "fixture_types_locations", ["location_id"], name: "index_fixture_types_locations_on_location_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "code"
    t.integer  "status"
    t.string   "name"
    t.string   "region"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
