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

ActiveRecord::Schema.define(version: 20170621143033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.string   "subject_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["subject_id"], name: "index_activities_on_subject_id", using: :btree
    t.index ["subject_type"], name: "index_activities_on_subject_type", using: :btree
    t.index ["user_id"], name: "index_activities_on_user_id", using: :btree
  end

  create_table "audio_files", force: :cascade do |t|
    t.string   "artist"
    t.string   "title"
    t.string   "audio_file_name"
    t.string   "audio_content_type"
    t.integer  "audio_file_size"
    t.datetime "audio_updated_at"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_audio_files_on_user_id", using: :btree
  end

  create_table "dashboards", force: :cascade do |t|
    t.integer "user_id"
  end

  create_table "snippets", force: :cascade do |t|
    t.string  "title"
    t.string  "artist"
    t.string  "notes",   default: ""
    t.integer "user_id"
    t.index ["user_id"], name: "index_snippets_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "encrypted_password", limit: 128
    t.string "confirmation_token", limit: 128
    t.string "remember_token",     limit: 128
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

  create_table "wishlists", force: :cascade do |t|
    t.string  "artist"
    t.string  "title"
    t.string  "instrument"
    t.integer "user_id"
    t.index ["user_id"], name: "index_wishlists_on_user_id", using: :btree
  end

  add_foreign_key "activities", "users"
  add_foreign_key "audio_files", "users"
  add_foreign_key "snippets", "users"
  add_foreign_key "wishlists", "users"
end
