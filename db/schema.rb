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

ActiveRecord::Schema.define(version: 2019_05_13_034356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.integer "toilet"
    t.integer "bath"
    t.integer "shower"
    t.integer "baby"
    t.integer "location_id"
    t.integer "rating"
    t.float "price"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.time "timeIn"
    t.time "timeOut"
    t.float "amount"
    t.integer "amenities_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "payment"
  end

  create_table "locations", force: :cascade do |t|
    t.text "suburb"
    t.text "street"
    t.text "house"
    t.text "typeOfHouse"
    t.text "description"
    t.time "availableFrom"
    t.time "availableTo"
    t.boolean "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "fname"
    t.text "lname"
    t.text "email"
    t.text "password_digest"
    t.boolean "admin"
    t.boolean "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
