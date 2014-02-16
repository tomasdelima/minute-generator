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

ActiveRecord::Schema.define(version: 20140216040739) do

  create_table "aels", force: true do |t|
    t.string   "city"
    t.string   "members"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "due_date"
    t.integer  "minute_id"
    t.string   "responsible"
    t.boolean  "finished"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["minute_id"], name: "index_entries_on_minute_id"

  create_table "minutes", force: true do |t|
    t.datetime "date"
    t.string   "members"
    t.integer  "ael_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "minutes", ["ael_id"], name: "index_minutes_on_ael_id"

end