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

ActiveRecord::Schema.define(version: 2020_04_10_224143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shows", force: :cascade do |t|
    t.string "tvmaze", limit: 20, null: false
    t.string "avatar", limit: 240
    t.string "title", limit: 140, null: false
    t.text "description", null: false
    t.text "genre", default: [], array: true
    t.integer "watchlists_count"
    t.integer "recommendations_count"
    t.boolean "editor_pick"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["editor_pick"], name: "index_shows_on_editor_pick"
    t.index ["recommendations_count"], name: "index_shows_on_recommendations_count"
    t.index ["title"], name: "index_shows_on_title"
    t.index ["tvmaze"], name: "index_shows_on_tvmaze"
    t.index ["watchlists_count"], name: "index_shows_on_watchlists_count"
  end

end
