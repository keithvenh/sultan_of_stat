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

ActiveRecord::Schema.define(version: 2019_02_13_222459) do

  create_table "batting_records", force: :cascade do |t|
    t.integer "player_id"
    t.integer "year"
    t.integer "stint"
    t.string "team_code"
    t.integer "games"
    t.integer "ab"
    t.integer "r"
    t.integer "h"
    t.integer "d"
    t.integer "t"
    t.integer "hr"
    t.integer "rbi"
    t.integer "sb"
    t.integer "cs"
    t.integer "bb"
    t.integer "so"
    t.integer "ibb"
    t.integer "hbp"
    t.integer "sac"
    t.integer "sf"
    t.integer "gidp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_batting_records_on_player_id"
  end

  create_table "fielding_records", force: :cascade do |t|
    t.integer "player_id"
    t.integer "year"
    t.string "stint"
    t.string "team_code"
    t.string "pos"
    t.integer "games"
    t.integer "gs"
    t.integer "inn_outs"
    t.integer "po"
    t.integer "a"
    t.integer "e"
    t.integer "dp"
    t.integer "pb"
    t.integer "wp"
    t.integer "sb"
    t.integer "cs"
    t.integer "zr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_fielding_records_on_player_id"
  end

  create_table "franchises", force: :cascade do |t|
    t.string "franchise_code"
    t.string "franchise_name"
    t.boolean "active"
    t.string "franchise_assoc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outfield_positions", force: :cascade do |t|
    t.integer "player_id"
    t.string "year"
    t.string "stint"
    t.integer "lf"
    t.integer "cf"
    t.integer "rf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_outfield_positions_on_player_id"
  end

  create_table "pitching_records", force: :cascade do |t|
    t.integer "player_id"
    t.integer "year"
    t.integer "stint"
    t.string "team_code"
    t.integer "w"
    t.integer "l"
    t.integer "games"
    t.integer "gs"
    t.integer "cg"
    t.integer "sho"
    t.integer "sv"
    t.integer "outs"
    t.integer "h"
    t.integer "er"
    t.integer "hr"
    t.integer "bb"
    t.integer "so"
    t.float "baa"
    t.float "era"
    t.integer "ibb"
    t.integer "wp"
    t.integer "hbp"
    t.integer "bk"
    t.integer "tbf"
    t.integer "gf"
    t.integer "r"
    t.integer "sac"
    t.integer "sf"
    t.integer "gidp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_pitching_records_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "player_code"
    t.string "first_name"
    t.string "last_name"
    t.string "bats"
    t.string "throws"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "year"
    t.string "team_code"
    t.string "franchise_code"
    t.integer "w"
    t.integer "l"
    t.string "name"
    t.string "park"
    t.integer "bpf"
    t.integer "ppf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
