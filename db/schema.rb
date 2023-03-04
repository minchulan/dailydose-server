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

ActiveRecord::Schema.define(version: 2023_03_04_224218) do

  create_table "medications", force: :cascade do |t|
    t.string "medication_name"
    t.string "image_url"
    t.float "price"
    t.string "prescription_required"
    t.integer "patient_id"
    t.float "dose"
    t.string "form"
    t.integer "quantity"
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
  end

end
