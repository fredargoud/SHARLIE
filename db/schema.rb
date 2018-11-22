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

ActiveRecord::Schema.define(version: 2018_11_22_111158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "space_id"
    t.integer "mate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mate_id"], name: "index_bookings_on_mate_id"
    t.index ["space_id"], name: "index_bookings_on_space_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.integer "price"
    t.integer "number_of_seats"
    t.string "title"
    t.boolean "available", default: true
    t.string "image"
    t.integer "ranking"
    t.float "latitude"
    t.float "longitude"
    t.string "address"

    t.index ["owner_id"], name: "index_spaces_on_owner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "spaces"
  add_foreign_key "bookings", "users", column: "mate_id"
  add_foreign_key "spaces", "users", column: "owner_id"
end
