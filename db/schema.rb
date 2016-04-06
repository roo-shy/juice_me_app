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

ActiveRecord::Schema.define(version: 20160405183517) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "health_issues", force: :cascade do |t|
    t.string   "name"
    t.string   "diabeties"
    t.string   "urinary_tract_infection"
    t.string   "inflammatory"
    t.string   "high_blood_pressure"
    t.string   "immune_system_boost"
    t.string   "gluten_free"
    t.string   "insomnia"
    t.string   "iron_deficiency"
    t.string   "antioxidant"
    t.string   "cholesterol_lowerer"
    t.string   "eye_health"
    t.string   "healthy_teeth"
    t.string   "healthy_digestion"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "juices", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remedies", force: :cascade do |t|
    t.integer  "juice_id"
    t.integer  "health_issue_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
