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

ActiveRecord::Schema.define(version: 2018_07_11_110319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "job_listing_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_listing_id"], name: "index_bookings_on_job_listing_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "venue"
    t.text "venue_detail"
    t.string "address"
    t.string "zip_code"
    t.string "province"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "job_listings", force: :cascade do |t|
    t.bigint "event_id"
    t.string "title"
    t.string "category"
    t.text "description"
    t.text "requirement"
    t.text "schedule_detail"
    t.integer "salary"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "gender"
    t.string "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "dress_code"
    t.datetime "end_time"
    t.datetime "start_time"
    t.index ["event_id"], name: "index_job_listings_on_event_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "booking_id"
    t.integer "rating"
    t.text "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company_name"
    t.string "title"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "zip_code"
    t.string "province"
    t.string "country"
    t.string "vat_number"
    t.string "land_phone"
    t.string "mobile_phone"
    t.string "gender"
    t.string "ssn"
    t.string "position"
    t.datetime "date_of_birth"
    t.text "experience"
    t.string "language"
    t.string "role"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "job_listings"
  add_foreign_key "bookings", "users"
  add_foreign_key "events", "users"
  add_foreign_key "job_listings", "events"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "users"
end
