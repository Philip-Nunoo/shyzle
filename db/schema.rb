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

ActiveRecord::Schema.define(version: 20131001103012) do

  create_table "company_names", force: true do |t|
    t.string   "name"
    t.integer  "TransportMode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departure_dates", force: true do |t|
    t.date     "departure"
    t.boolean  "active"
    t.integer  "DepartureTime_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departure_times", force: true do |t|
    t.string   "departureTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", force: true do |t|
    t.integer  "CompanyName_id"
    t.integer  "FromDestination_id"
    t.integer  "ToDestination_id"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "from_destinations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "requests", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "phone_number"
    t.integer  "Destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_admins", force: true do |t|
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

  add_index "system_admins", ["email"], name: "index_system_admins_on_email", unique: true
  add_index "system_admins", ["reset_password_token"], name: "index_system_admins_on_reset_password_token", unique: true

  create_table "to_destinations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transport_modes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
