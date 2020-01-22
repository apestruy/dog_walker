# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_22_161334) do

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.string "breed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "walker_id", null: false
    t.integer "dog_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dog_id"], name: "index_reservations_on_dog_id"
    t.index ["walker_id"], name: "index_reservations_on_walker_id"
  end

  create_table "walkers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reservations", "dogs"
  add_foreign_key "reservations", "walkers"
end
