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

ActiveRecord::Schema[7.0].define(version: 2022_11_04_164144) do
  create_table "exercises", force: :cascade do |t|
    t.integer "program_id"
    t.string "exercise_name"
    t.integer "prescribed_sets"
    t.integer "prescribed_reps"
    t.integer "prescribed_weight"
    t.integer "performed_sets"
    t.integer "peformed_reps"
    t.integer "performed_weight"
    t.integer "rest_duration"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "progress_photos", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.integer "current_weight"
    t.integer "goal_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weight_histories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "weight"
    t.date "date"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
