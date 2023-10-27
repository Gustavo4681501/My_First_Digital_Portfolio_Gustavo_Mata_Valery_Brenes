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

ActiveRecord::Schema[7.0].define(version: 2023_10_26_162243) do
  create_table "project_technologies", id: false, force: :cascade do |t|
    t.integer "projects_id"
    t.integer "technologies_id"
    t.index ["projects_id"], name: "index_project_technologies_on_projects_id"
    t.index ["technologies_id"], name: "index_project_technologies_on_technologies_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "start_date"
    t.date "finish_date"
    t.string "responsibilities"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "skill_type_id", null: false
    t.index ["skill_type_id"], name: "index_skills_on_skill_type_id"
  end

  create_table "social_links", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_skills", id: false, force: :cascade do |t|
    t.integer "users_id"
    t.integer "skills_id"
    t.index ["skills_id"], name: "index_user_skills_on_skills_id"
    t.index ["users_id"], name: "index_user_skills_on_users_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "social_link_id"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["social_link_id"], name: "index_users_on_social_link_id"
  end

  create_table "users_user_types", id: false, force: :cascade do |t|
    t.integer "users_id"
    t.integer "user_types_id"
    t.index ["user_types_id"], name: "index_users_user_types_on_user_types_id"
    t.index ["users_id"], name: "index_users_user_types_on_users_id"
  end

  add_foreign_key "skills", "skill_types"
  add_foreign_key "users", "social_links"
end
