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

ActiveRecord::Schema.define(version: 20170502022922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industry_profiles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industry_sub_profiles", force: :cascade do |t|
    t.integer  "industry_profile_id"
    t.string   "name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["industry_profile_id"], name: "index_industry_sub_profiles_on_industry_profile_id", using: :btree
  end

  create_table "listener_genres", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_listener_genres_on_genre_id", using: :btree
    t.index ["user_id"], name: "index_listener_genres_on_user_id", using: :btree
  end

  create_table "listener_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "genre_id"
    t.integer  "sub_genre_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["genre_id"], name: "index_listener_profiles_on_genre_id", using: :btree
    t.index ["sub_genre_id"], name: "index_listener_profiles_on_sub_genre_id", using: :btree
    t.index ["user_id"], name: "index_listener_profiles_on_user_id", using: :btree
  end

  create_table "listener_sub_genres", force: :cascade do |t|
    t.integer  "listener_genre_id"
    t.integer  "sub_genre_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["listener_genre_id"], name: "index_listener_sub_genres_on_listener_genre_id", using: :btree
    t.index ["sub_genre_id"], name: "index_listener_sub_genres_on_sub_genre_id", using: :btree
  end

  create_table "professional_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "industry_profile_id"
    t.integer  "industry_sub_profile_id"
    t.integer  "genre_id"
    t.boolean  "hireable_lesson"
    t.boolean  "hireable_booking"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["genre_id"], name: "index_professional_profiles_on_genre_id", using: :btree
    t.index ["industry_profile_id"], name: "index_professional_profiles_on_industry_profile_id", using: :btree
    t.index ["industry_sub_profile_id"], name: "index_professional_profiles_on_industry_sub_profile_id", using: :btree
    t.index ["user_id"], name: "index_professional_profiles_on_user_id", using: :btree
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_provinces_on_region_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_genres", force: :cascade do |t|
    t.integer  "genre_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_sub_genres_on_genre_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "profile_name"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.integer  "gender"
    t.string   "city"
    t.integer  "city_id"
    t.integer  "region_id"
    t.integer  "province_id"
    t.string   "user_type"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["city_id"], name: "index_users_on_city_id", using: :btree
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["province_id"], name: "index_users_on_province_id", using: :btree
    t.index ["region_id"], name: "index_users_on_region_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
    t.index ["user_type"], name: "index_users_on_user_type", using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
