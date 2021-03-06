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

ActiveRecord::Schema.define(version: 20160326185335) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "sheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["sheet_id"], name: "index_categories_on_sheet_id"

  create_table "hours", force: :cascade do |t|
    t.integer  "hoursheet_id"
    t.integer  "item_id"
    t.integer  "value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "hours", ["hoursheet_id"], name: "index_hours_on_hoursheet_id"
  add_index "hours", ["item_id"], name: "index_hours_on_item_id"

  create_table "hoursheets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "month"
    t.integer  "year"
    t.integer  "sheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hoursheets", ["sheet_id"], name: "index_hoursheets_on_sheet_id"
  add_index "hoursheets", ["user_id"], name: "index_hoursheets_on_user_id"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"

  create_table "sheet_managers", force: :cascade do |t|
    t.integer  "sheet_id"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sheet_managers", ["sheet_id"], name: "index_sheet_managers_on_sheet_id"

  create_table "sheets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
