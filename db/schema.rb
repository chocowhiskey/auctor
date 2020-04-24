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

ActiveRecord::Schema.define(version: 2020_04_24_175955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.integer "age"
    t.integer "height"
    t.string "sex"
    t.string "hair_color"
    t.string "eye_color"
    t.string "physique"
    t.string "profession"
    t.string "place_of_birth"
    t.date "birthday"
    t.text "personality"
    t.bigint "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["project_id"], name: "index_characters_on_project_id"
  end

  create_table "plots", force: :cascade do |t|
    t.text "summary"
    t.bigint "projects_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["projects_id"], name: "index_plots_on_projects_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters", "projects"
  add_foreign_key "plots", "projects", column: "projects_id"
end
