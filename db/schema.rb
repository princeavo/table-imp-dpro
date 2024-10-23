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

ActiveRecord::Schema[7.2].define(version: 2024_10_23_114328) do
  create_table "adresses", force: :cascade do |t|
    t.string "line_1"
    t.string "line_2"
    t.string "line_3"
    t.string "city"
    t.string "prefecture"
    t.string "postalcode"
    t.integer "adressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.integer "shops_id", null: false
    t.string "name"
    t.integer "price"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shops_id"], name: "index_foods_on_shops_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customers_id", null: false
    t.integer "adresses_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adresses_id"], name: "index_orders_on_adresses_id"
    t.index ["customers_id"], name: "index_orders_on_customers_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "foods", "shops", column: "shops_id"
  add_foreign_key "orders", "adresses", column: "adresses_id"
  add_foreign_key "orders", "customers", column: "customers_id"
end
