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

ActiveRecord::Schema.define(version: 20150525173722) do

  create_table "advocates", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "teacher_id"
    t.string   "gender"
    t.date     "dob"
    t.string   "region"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "advocates", ["email"], name: "index_advocates_on_email", unique: true
  add_index "advocates", ["reset_password_token"], name: "index_advocates_on_reset_password_token", unique: true

  create_table "networks", force: :cascade do |t|
    t.integer  "advocate_id"
    t.string   "country"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: :cascade do |t|
    t.integer  "advocate_id"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "location"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "network_id"
  end

  create_table "student_enrollments", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.integer  "school_id"
    t.string   "gender"
    t.date     "dob"
    t.string   "education_level"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teacher_courses", force: :cascade do |t|
    t.datetime "date"
    t.string   "description"
    t.integer  "teacher_enrollment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teacher_enrollments", force: :cascade do |t|
    t.boolean  "completed"
    t.integer  "teacher_course_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: :cascade do |t|
    t.integer  "advocate_id"
    t.string   "gender"
    t.date     "dob"
    t.string   "education_level"
    t.integer  "teacher_enrollment_id"
    t.integer  "school_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
