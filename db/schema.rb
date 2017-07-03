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

ActiveRecord::Schema.define(version: 20170701065101) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id", "sender_id"], name: "index_conversations_on_recipient_id_and_sender_id", unique: true
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "st_profiles", force: :cascade do |t|
    t.string "st_ba_name"
    t.string "st_ba_surname"
    t.string "st_ba_father"
    t.string "st_ba_mother"
    t.string "st_ba_cellphone"
    t.string "st_ba_passport"
    t.string "st_ba_nationality"
    t.string "st_ba_country"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "university_profiles", force: :cascade do |t|
    t.string "uni_logo"
    t.string "uni_description"
    t.json "uni_galaries"
    t.string "uni_log_rank"
    t.date "uni_founded_date"
    t.string "uni_url"
    t.string "uni_email"
    t.string "uni_phone1"
    t.string "uni_phone2"
    t.string "uni_fax"
    t.string "uni_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unm_uns", force: :cascade do |t|
    t.string "uni_country"
    t.string "uni_city"
    t.string "uni_name"
    t.string "uni_sector"
    t.string "uni_state_ava_fees"
    t.string "uni_inst_state_ava_fees"
    t.string "uni_private_med_ava_fees"
    t.string "uni_private_den_ava_fees"
    t.string "uni_private_eng_ava_fees"
    t.string "uni_private_lit_ava_fees"
    t.string "uni_inst_private_fees"
    t.string "uni_faculties_number"
    t.string "uni_faculties_name"
    t.string "uni_faculties_speciality"
    t.string "uni_institution_number"
    t.string "uni_institutions_name"
    t.string "uni_institution_speciality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "university_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "surname"
    t.string "service"
    t.string "unique_id"
    t.integer "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
end
