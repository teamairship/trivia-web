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

ActiveRecord::Schema[7.0].define(version: 2022_12_16_203352) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.integer "status", default: 0, null: false
    t.index ["status"], name: "index_categories_on_status"
  end

  create_table "game_player_answers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_answer_id", null: false
    t.bigint "game_player_id", null: false
    t.index ["game_player_id"], name: "index_game_player_answers_on_game_player_id"
    t.index ["question_answer_id"], name: "index_game_player_answers_on_question_answer_id"
  end

  create_table "game_players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id", null: false
    t.bigint "user_id", null: false
    t.integer "role", default: 0, null: false
    t.decimal "score", precision: 10, scale: 2, default: "0.0", null: false
    t.index ["game_id"], name: "index_game_players_on_game_id"
    t.index ["role"], name: "index_game_players_on_role"
    t.index ["score"], name: "index_game_players_on_score"
    t.index ["user_id"], name: "index_game_players_on_user_id"
  end

  create_table "game_questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id", null: false
    t.bigint "question_id", null: false
    t.index ["game_id"], name: "index_game_questions_on_game_id"
    t.index ["question_id"], name: "index_game_questions_on_question_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.integer "difficulty"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_answers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id", null: false
    t.string "value", null: false
    t.boolean "correct"
    t.index ["correct"], name: "index_question_answers_on_correct"
    t.index ["question_id"], name: "index_question_answers_on_question_id"
  end

  create_table "question_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "question_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_question_categories_on_category_id"
    t.index ["question_id"], name: "index_question_categories_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prompt", null: false
    t.integer "difficulty", null: false
    t.integer "type", null: false
    t.string "uid", null: false
    t.string "provider", null: false
    t.index ["difficulty"], name: "index_questions_on_difficulty"
    t.index ["prompt"], name: "index_questions_on_prompt"
    t.index ["type"], name: "index_questions_on_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.bigint "organization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  add_foreign_key "users", "organizations"
end
