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

ActiveRecord::Schema[7.0].define(version: 2023_07_14_083011) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "numbers", force: :cascade do |t|
    t.integer "score"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "player_id", null: false
    t.bigint "sport_id"
    t.bigint "sports_id"
    t.index ["player_id"], name: "index_numbers_on_player_id"
    t.index ["sport_id"], name: "index_numbers_on_sport_id"
  end

  create_table "numbers_sports", id: false, force: :cascade do |t|
    t.bigint "number_id", null: false
    t.bigint "sport_id", null: false
    t.index ["number_id", "sport_id"], name: "index_numbers_sports_on_number_id_and_sport_id"
    t.index ["sport_id", "number_id"], name: "index_numbers_sports_on_sport_id_and_number_id"
  end

  create_table "players", force: :cascade do |t|
    t.integer "size"
    t.integer "height"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "sport_id", null: false
    t.index ["sport_id"], name: "index_players_on_sport_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.string "teams"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sports_on_user_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.bigint "numbers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["numbers_id"], name: "index_trainings_on_numbers_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "numbers", "players"
  add_foreign_key "numbers", "sports"
  add_foreign_key "players", "sports"
  add_foreign_key "players", "users"
  add_foreign_key "sports", "users"
  add_foreign_key "trainings", "numbers", column: "numbers_id"
end
