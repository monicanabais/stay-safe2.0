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


ActiveRecord::Schema.define(version: 2018_06_11_162135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "current_locations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_current_locations_on_user_id"
  end

  create_table "friend_requests", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "friend_id", null: false
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "accepted", default: false
    t.boolean "read", default: false
    t.index ["friend_id"], name: "index_friend_requests_on_friend_id"
    t.index ["user_id", "friend_id"], name: "index_friend_requests_on_user_id_and_friend_id", unique: true
    t.index ["user_id"], name: "index_friend_requests_on_user_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "friend_id"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id", "friend_id"], name: "index_friendships_on_user_id_and_friend_id", unique: true
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "hazard_notifications", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "hazard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.bigint "notifiee_id"
    t.boolean "read", default: false
    t.index ["hazard_id"], name: "index_hazard_notifications_on_hazard_id"
    t.index ["notifiee_id"], name: "index_hazard_notifications_on_notifiee_id"
    t.index ["user_id"], name: "index_hazard_notifications_on_user_id"
  end

  create_table "hazards", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.string "location"
    t.string "kind"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.integer "state", default: 0, null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "current_locations", "users"
  add_foreign_key "friend_requests", "users"
  add_foreign_key "friendships", "users"
  add_foreign_key "friendships", "users", column: "friend_id"
  add_foreign_key "hazard_notifications", "hazards"
  add_foreign_key "hazard_notifications", "users"
end
