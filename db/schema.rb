# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_13_231139) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "street_address"
    t.string "city"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmers", force: :cascade do |t|
    t.string "region"
    t.integer "years_active"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "tier_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_subscriptions_on_customer_id"
    t.index ["tier_id"], name: "index_subscriptions_on_tier_id"
  end

  create_table "teas", force: :cascade do |t|
    t.string "name"
    t.integer "category"
    t.text "description"
    t.string "brew_time"
    t.integer "brew_temp"
    t.string "origin"
    t.string "processing_method"
    t.datetime "packaged_on"
    t.bigint "farmer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farmer_id"], name: "index_teas_on_farmer_id"
  end

  create_table "tier_teas", force: :cascade do |t|
    t.bigint "tier_id", null: false
    t.bigint "tea_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tea_id"], name: "index_tier_teas_on_tea_id"
    t.index ["tier_id"], name: "index_tier_teas_on_tier_id"
  end

  create_table "tiers", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "date_shipped"
    t.integer "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "subscriptions", "customers"
  add_foreign_key "subscriptions", "tiers"
  add_foreign_key "teas", "farmers"
  add_foreign_key "tier_teas", "teas"
  add_foreign_key "tier_teas", "tiers"
end
