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

ActiveRecord::Schema[7.0].define(version: 2022_11_08_173008) do
  create_table "operations_and_compliances", force: :cascade do |t|
    t.integer "week_id"
    t.float "essential_fs_and_legal"
    t.float "retail_ops"
    t.float "health_and_safety"
    t.float "uber_rating"
    t.float "just_eat"
    t.float "eho"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer "week_id"
    t.float "leavers"
    t.float "number_of_staff"
    t.float "staffing_level"
    t.float "e_learning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_and_finances", force: :cascade do |t|
    t.integer "week_id"
    t.float "lfl"
    t.float "total_weekly_turnover"
    t.float "delivery_turnover"
    t.float "turnover"
    t.float "budget"
    t.float "footfall"
    t.float "average_spend"
    t.text "comments"
    t.float "hours_last_year"
    t.float "hours_this_year"
    t.float "spmh"
    t.float "returns"
    t.float "stock_balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "targets", force: :cascade do |t|
    t.integer "week_id"
    t.string "klass_name"
    t.string "klass_attribute"
    t.float "target"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.integer "week_no"
    t.date "date_commencing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
