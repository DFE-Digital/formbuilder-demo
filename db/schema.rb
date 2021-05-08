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

ActiveRecord::Schema.define(version: 2021_05_08_112536) do

  create_table "orders", force: :cascade do |t|
    t.integer "size"
    t.integer "custom_size"
    t.string "toppings"
    t.string "base"
    t.string "stuffed_crust"
    t.string "sauce"
    t.string "cheese"
    t.string "sides"
    t.string "phone"
    t.string "email"
    t.string "allergies"
    t.string "name"
    t.string "address"
    t.string "delivery_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
