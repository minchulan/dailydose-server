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

ActiveRecord::Schema.define(version: 2023_03_11_061214) do

  create_table "medications", force: :cascade do |t|
    t.string "medication_name"
    t.binary "image_url"
    t.float "price"
    t.integer "patient_id"
    t.string "quantity"
    t.integer "thc_strength"
    t.integer "cbd_strength"
    t.text "feelings"
    t.text "negatives"
    t.text "helps_with"
    t.text "details"
    t.string "aka"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "birthday"
    t.string "gender"
    t.string "email"
    t.string "phone_number"
    t.text "address"
    t.string "allergies"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
