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

ActiveRecord::Schema.define(version: 20161209153224) do

  create_table "gardens", force: :cascade do |t|
    t.string   "name",        limit: 255, null: false
    t.integer  "square_feet", limit: 4,   null: false
    t.integer  "zone",        limit: 4,   null: false
    t.string   "garden_type", limit: 255
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "gardens", ["user_id"], name: "index_gardens_on_user_id", using: :btree

  create_table "gardens_plants", force: :cascade do |t|
    t.integer "garden_id", limit: 4
    t.integer "plant_id",  limit: 4
  end

  add_index "gardens_plants", ["garden_id"], name: "index_gardens_plants_on_garden_id", using: :btree
  add_index "gardens_plants", ["plant_id"], name: "index_gardens_plants_on_plant_id", using: :btree

  create_table "plants", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "scientific_name",   limit: 255
    t.integer  "height",            limit: 4
    t.integer  "width",             limit: 4
    t.integer  "spacing",           limit: 4
    t.integer  "life_cycle",        limit: 4
    t.integer  "sun",               limit: 4
    t.integer  "sow_method",        limit: 4
    t.date     "direct_seed_start"
    t.date     "direct_seed_stop"
    t.date     "indoor_seed_start"
    t.date     "indoor_seed_stop"
    t.date     "transplant_start"
    t.date     "transplant_stop"
    t.integer  "garden_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "plants", ["garden_id"], name: "index_plants_on_garden_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,  null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.datetime "deleted_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  add_foreign_key "gardens", "users"
  add_foreign_key "gardens_plants", "gardens"
  add_foreign_key "gardens_plants", "plants"
  add_foreign_key "plants", "gardens"
end
