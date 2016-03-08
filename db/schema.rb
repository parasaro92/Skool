# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160308120631) do

  create_table "attendances", force: :cascade do |t|
    t.boolean  "attendance"
    t.date     "date"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attendances", ["student_id"], name: "index_attendances_on_student_id"

  create_table "klasses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standards", force: :cascade do |t|
    t.string   "name"
    t.integer  "klass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "standards", ["klass_id"], name: "index_standards_on_klass_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "fathers_name"
    t.integer  "gender"
    t.date     "dob"
    t.string   "phone"
    t.text     "address"
    t.integer  "standard_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "students", ["standard_id"], name: "index_students_on_standard_id"

end
