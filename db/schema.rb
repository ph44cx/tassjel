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

ActiveRecord::Schema.define(version: 20170711111212) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id", "sender_id"], name: "index_conversations_on_recipient_id_and_sender_id", unique: true
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id"
    t.index ["sender_id"], name: "index_conversations_on_sender_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.integer "uni_faculties_number"
    t.string "uni_faculties_name"
    t.string "uni_faculties_speciality"
    t.string "faculty_price"
    t.integer "university_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["university_id"], name: "index_faculties_on_university_id"
  end

  create_table "faculty_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculty_specialities", force: :cascade do |t|
    t.string "speciality"
    t.integer "faculty_name_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_name_id"], name: "index_faculty_specialities_on_faculty_name_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "uni_institution_number"
    t.string "uni_institution_name"
    t.string "uni_institution_speciality"
    t.integer "university_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["university_id"], name: "index_institutions_on_university_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "user_id"
    t.integer "conversation_id"
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

  create_table "st_ba_files", force: :cascade do |t|
    t.string "st_ba_cer_source"
    t.string "st_ba_cer_marks"
    t.string "st_ba_cer_year"
    t.boolean "st_ba_cer_extra"
    t.string "st_ba_cer_extra_cert"
    t.string "st_ba_cer_extra_sat"
    t.string "st_ba_cer_extra_gcse"
    t.string "st_ba_cer_extra_tahseli"
    t.string "st_ba_cer_extra_qudorat"
    t.string "st_ba_cer_extra_yos"
    t.string "st_ba_cer_extra_mearyi"
    t.boolean "st_ba_cer_lang"
    t.string "st_ba_cer_lang_toefl"
    t.string "st_ba_cer_lang_ielts"
    t.string "st_ba_cer_lang_other"
    t.string "st_ba_cer_photo"
    t.string "st_ba_cer_photo_transcript"
    t.string "st_ba_cer_extra_photo1"
    t.string "st_ba_cer_extra_photo2"
    t.string "st_ba_cer_extra_photo3"
    t.string "st_ba_cer_extra_photo4"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "st_ma_files", force: :cascade do |t|
    t.string "st_ma_cer_source"
    t.string "st_ma_cer_field"
    t.string "st_ma_cer_marks"
    t.string "st_ma_cer_year"
    t.string "st_ma_passport_photo"
    t.string "st_ma_offical_photo"
    t.string "st_ma_extra_photo1"
    t.string "st_ma_extra_photo2"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "st_phd_files", force: :cascade do |t|
    t.string "st_maba_cer_source"
    t.string "st_maba_cer_field"
    t.string "st_maba_cer_marks"
    t.string "st_maba_cer_year"
    t.string "st_maphd_cer_source"
    t.string "st_maphd_cer_field"
    t.string "st_maphd_cer_marks"
    t.string "st_maphd_cer_year"
    t.integer "user_id"
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
    t.string "st_ba_passport_photo"
    t.string "st_ba_official_photo"
  end

  create_table "st_tr_files", force: :cascade do |t|
    t.string "st_ma_un_field"
    t.string "st_tr_un_source"
    t.string "st_tr_un_name"
    t.string "st_tr_un_sem"
    t.string "st_tr_photo1"
    t.string "st_tr_photo2"
    t.string "st_tr_extra_photo1"
    t.string "st_tr_extra_photo2"
    t.string "st_tr_un_target"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "st_wishes", force: :cascade do |t|
    t.string "st_country_wish"
    t.string "st_city_wish"
    t.string "st_wish_priority"
    t.string "st_univ_wish"
    t.string "st_specialty_wish"
    t.integer "st_ba_file_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "st_ma_file_id"
  end

  create_table "universities", force: :cascade do |t|
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
    t.string "uni_institution_number"
    t.string "uni_institutions_name"
    t.string "uni_institution_speciality"
    t.string "uni_open_enrollment_date"
    t.string "uni_close_enrollment_date"
    t.string "uni_result_enrollment_date"
    t.string "uni_start_study_date"
    t.string "uni_langs"
    t.integer "university_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "university_profiles", force: :cascade do |t|
    t.string "uni_logo"
    t.string "uni_cover_photo"
    t.string "uni_description"
    t.string "uni_galaries"
    t.string "uni_loc_rank"
    t.string "uni_int_rank"
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

end
