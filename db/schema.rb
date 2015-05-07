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

ActiveRecord::Schema.define(version: 20150507004618) do

  create_table "bank_subsidiaries", force: :cascade do |t|
    t.string   "address"
    t.integer  "bank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bank_subsidiaries", ["bank_id"], name: "index_bank_subsidiaries_on_bank_id"

  create_table "banks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
