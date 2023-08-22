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

ActiveRecord::Schema[7.0].define(version: 2023_08_22_062811) do
  create_table "employees", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "nickName"
    t.string "code"
    t.string "department"
    t.string "phone"
    t.string "company"
    t.boolean "deleteStatus", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "itemName"
    t.string "serialNumber"
    t.string "itemType"
    t.integer "amount"
    t.boolean "status"
    t.boolean "deleteStatus", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recordings", force: :cascade do |t|
    t.datetime "returnDate"
    t.integer "employee_id", null: false
    t.integer "equipment_id", null: false
    t.boolean "deleteStatus", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_recordings_on_employee_id"
    t.index ["equipment_id"], name: "index_recordings_on_equipment_id"
  end

  add_foreign_key "recordings", "employees"
  add_foreign_key "recordings", "equipment"
end
