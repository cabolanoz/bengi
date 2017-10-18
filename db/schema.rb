# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20160826151419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "routes", force: :cascade do |t|
    t.decimal  "latitude",   precision: 10, scale: 8
    t.decimal  "longitude",  precision: 10, scale: 8
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "vehicle_id"
    t.index ["vehicle_id"], name: "index_routes_on_vehicle_id", using: :btree
  end

  create_table "trademarks", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.integer  "trademark_id"
    t.string   "plate"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["trademark_id"], name: "index_vehicles_on_trademark_id", using: :btree
  end

  add_foreign_key "routes", "vehicles"
  add_foreign_key "vehicles", "trademarks"
end
