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

ActiveRecord::Schema.define(version: 20170507010050) do

  create_table "availabilities_tables", force: :cascade do |t|
    t.boolean "mon_am"
    t.boolean "tues_am"
    t.boolean "wed_am"
    t.boolean "thurs_am"
    t.boolean "fri_am"
    t.boolean "mon_pm"
    t.boolean "tues_pm"
    t.boolean "wed_pm"
    t.boolean "thurs_pm"
    t.boolean "fri_pm"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.boolean "seeker"
    t.boolean "recruiter"
  end

end
