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

ActiveRecord::Schema.define(version: 2020_10_27_190846) do

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "company_name"
    t.string "name"
    t.integer "address_number"
    t.text "address"
    t.string "telephone"
    t.boolean "is_deleted"
    t.string "profile_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_valid", default: true, null: false
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "illustrators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "illustrator_name"
    t.string "name"
    t.integer "address_number"
    t.text "address"
    t.string "telephone"
    t.string "profile_image_id"
    t.boolean "is_deleted"
    t.datetime "deleted_at"
    t.boolean "is_valid", default: true, null: false
    t.index ["email"], name: "index_illustrators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_illustrators_on_reset_password_token", unique: true
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.text "caption"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.string "category"
    t.integer "orders_id"
    t.integer "amount"
    t.integer "illustrator_id"
  end

end
