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

ActiveRecord::Schema.define(version: 2020_09_18_000702) do

  create_table "cuisines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image"
    t.string "name", null: false
    t.text "recipe"
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foodstuffs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "protein"
    t.integer "fat"
    t.integer "carbohydrate"
    t.integer "vitaminA"
    t.integer "vitaminB1"
    t.integer "vitaminB2"
    t.integer "vitaminC"
    t.integer "vitaminD"
    t.integer "Na"
    t.integer "Ca"
    t.integer "Fe"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.integer "age", null: false
    t.bigint "recently_eat1_id"
    t.bigint "recently_aet2_id"
    t.bigint "recently_eat3_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["recently_aet2_id"], name: "index_users_on_recently_aet2_id"
    t.index ["recently_eat1_id"], name: "index_users_on_recently_eat1_id"
    t.index ["recently_eat3_id"], name: "index_users_on_recently_eat3_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end