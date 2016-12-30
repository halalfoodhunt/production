# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161220032957) do

  create_table "banquet_types", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "caterer_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "caterer_packages", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "minimum_pax"
    t.decimal  "price",       precision: 8, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "caterer_id"
  end

  create_table "caterer_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "caterers", force: :cascade do |t|
    t.string   "business_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "operating_address"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "website"
    t.text     "question_1"
    t.text     "question_2"
    t.string   "delivery_link"
    t.text     "delivery_terms"
    t.boolean  "draft",                       default: true
    t.datetime "expiry_date"
    t.string   "merchant_id"
    t.text     "friends_rewards_terms"
    t.boolean  "verified",                    default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "qualifying_type_id"
    t.integer  "caterer_type_id"
    t.integer  "cuisine_type_id"
    t.integer  "friends_reward_id"
    t.integer  "region_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string   "image_3_file_name"
    t.string   "image_3_content_type"
    t.integer  "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string   "image_4_file_name"
    t.string   "image_4_content_type"
    t.integer  "image_4_file_size"
    t.datetime "image_4_updated_at"
    t.string   "document_1_file_name"
    t.string   "document_1_content_type"
    t.integer  "document_1_file_size"
    t.datetime "document_1_updated_at"
    t.string   "document_2_file_name"
    t.string   "document_2_content_type"
    t.integer  "document_2_file_size"
    t.datetime "document_2_updated_at"
    t.string   "document_3_file_name"
    t.string   "document_3_content_type"
    t.integer  "document_3_file_size"
    t.datetime "document_3_updated_at"
    t.string   "document_4_file_name"
    t.string   "document_4_content_type"
    t.integer  "document_4_file_size"
    t.datetime "document_4_updated_at"
    t.integer  "price_range_id"
    t.integer  "catering_type_id"
  end

  create_table "catering_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "class_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "cooking_skills", force: :cascade do |t|
    t.integer  "lesson_id"
    t.integer  "culinary_skill_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "coupons", force: :cascade do |t|
    t.string   "code"
    t.string   "free_trial_length"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "course_types", force: :cascade do |t|
    t.integer  "lesson_id"
    t.integer  "class_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cuisine_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "culinary_skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "days", force: :cascade do |t|
    t.string   "name"
    t.integer  "place_id"
    t.integer  "supermarket_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "dining_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "dish_delivery_types", force: :cascade do |t|
    t.integer  "food_delivery_type_id"
    t.integer  "food_delivery_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "dish_types", force: :cascade do |t|
    t.integer  "food_type_id"
    t.integer  "ecommer_id"
    t.integer  "supplier_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "eateries", force: :cascade do |t|
    t.integer  "dining_type_id"
    t.integer  "place_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ecommers", force: :cascade do |t|
    t.string   "business_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "operating_address"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "website"
    t.string   "preferred_contact"
    t.string   "preferred_order_method"
    t.text     "question_1"
    t.text     "question_2"
    t.text     "question_3"
    t.text     "question_4"
    t.text     "question_5"
    t.string   "delivery_link"
    t.boolean  "draft",                       default: true
    t.datetime "expiry_date"
    t.string   "merchant_id"
    t.text     "friends_rewards_terms"
    t.boolean  "verified",                    default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "location_id"
    t.integer  "cuisine_type_id"
    t.integer  "qualifying_type_id"
    t.integer  "food_type_id"
    t.integer  "service_type_id"
    t.integer  "establishment_type_id"
    t.integer  "friends_reward_id"
    t.integer  "region_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string   "image_3_file_name"
    t.string   "image_3_content_type"
    t.integer  "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string   "image_4_file_name"
    t.string   "image_4_content_type"
    t.integer  "image_4_file_size"
    t.datetime "image_4_updated_at"
    t.string   "document_1_file_name"
    t.string   "document_1_content_type"
    t.integer  "document_1_file_size"
    t.datetime "document_1_updated_at"
    t.string   "document_2_file_name"
    t.string   "document_2_content_type"
    t.integer  "document_2_file_size"
    t.datetime "document_2_updated_at"
    t.string   "document_3_file_name"
    t.string   "document_3_content_type"
    t.integer  "document_3_file_size"
    t.datetime "document_3_updated_at"
    t.string   "document_4_file_name"
    t.string   "document_4_content_type"
    t.integer  "document_4_file_size"
    t.datetime "document_4_updated_at"
    t.integer  "price_range_id"
  end

  create_table "establishment_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "featured_articles", force: :cascade do |t|
    t.string   "title"
    t.string   "article_url"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
  end

  create_table "features", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "highlight_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "food_deliveries", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_email"
    t.text     "contactable_hours"
    t.string   "general_contact_number"
    t.string   "website"
    t.string   "ordering_link"
    t.string   "facebook"
    t.string   "instagram"
    t.text     "question_1"
    t.text     "question_2"
    t.text     "question_3"
    t.text     "question_4"
    t.text     "question_5"
    t.datetime "expiry_date"
    t.text     "friends_rewards_terms"
    t.string   "merchant_id"
    t.boolean  "draft",                       default: true
    t.boolean  "verified",                    default: false
    t.integer  "friends_reward_id"
    t.integer  "qualifying_type_id"
    t.integer  "region_id"
    t.integer  "cuisine_type_id"
    t.integer  "food_delivery_type_id"
    t.integer  "price_range_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string   "image_3_file_name"
    t.string   "image_3_content_type"
    t.integer  "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string   "image_4_file_name"
    t.string   "image_4_content_type"
    t.integer  "image_4_file_size"
    t.datetime "image_4_updated_at"
    t.string   "document_1_file_name"
    t.string   "document_1_content_type"
    t.integer  "document_1_file_size"
    t.datetime "document_1_updated_at"
    t.string   "document_2_file_name"
    t.string   "document_2_content_type"
    t.integer  "document_2_file_size"
    t.datetime "document_2_updated_at"
    t.string   "document_3_file_name"
    t.string   "document_3_content_type"
    t.integer  "document_3_file_size"
    t.datetime "document_3_updated_at"
    t.string   "document_4_file_name"
    t.string   "document_4_content_type"
    t.integer  "document_4_file_size"
    t.datetime "document_4_updated_at"
  end

  create_table "food_delivery_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "food_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "friends_rewards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "grocer_service_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "grocer_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "highlights", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "item_types", force: :cascade do |t|
    t.integer  "product_type_id"
    t.integer  "product_id"
    t.integer  "supplier_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "lesson_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "preferred_contact"
    t.string   "preferred_sign_up_method"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "website"
    t.text     "question_1"
    t.text     "question_2"
    t.text     "question_3"
    t.text     "question_4"
    t.boolean  "draft",                       default: true
    t.datetime "expiry_date"
    t.string   "merchant_id"
    t.text     "friends_rewards_terms"
    t.boolean  "verified",                    default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "location_id"
    t.integer  "lesson_type_id"
    t.integer  "class_type_id"
    t.integer  "culinary_skill_id"
    t.integer  "friends_reward_id"
    t.integer  "region_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string   "image_3_file_name"
    t.string   "image_3_content_type"
    t.integer  "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string   "image_4_file_name"
    t.string   "image_4_content_type"
    t.integer  "image_4_file_size"
    t.datetime "image_4_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "merchant_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "menu_types", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "cuisine_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "ecommer_id"
    t.integer  "caterer_id"
    t.integer  "food_delivery_id"
  end

  create_table "merchants", force: :cascade do |t|
    t.string   "email",                    default: "", null: false
    t.string   "encrypted_password",       default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "role"
    t.string   "registered_business_name"
    t.string   "uen_roc_fhc"
    t.string   "contact_person_name"
    t.string   "contact_person_position"
    t.string   "office_number"
    t.string   "mobile_number"
    t.string   "office_mailing_address"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "region_id"
  end

  add_index "merchants", ["email"], name: "index_merchants_on_email", unique: true
  add_index "merchants", ["reset_password_token"], name: "index_merchants_on_reset_password_token", unique: true

  create_table "online_grocers", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_email"
    t.text     "contactable_hours"
    t.string   "general_contact_number"
    t.string   "website"
    t.string   "ordering_link"
    t.string   "facebook"
    t.string   "instagram"
    t.text     "question_1"
    t.text     "question_2"
    t.text     "question_3"
    t.text     "question_4"
    t.text     "question_5"
    t.datetime "expiry_date"
    t.text     "friends_rewards_terms"
    t.string   "merchant_id"
    t.boolean  "draft",                       default: true
    t.boolean  "verified",                    default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "region_id"
    t.integer  "location_id"
    t.integer  "price_range_id"
    t.integer  "qualifying_type_id"
    t.integer  "friends_reward_id"
    t.integer  "grocer_type_id"
    t.integer  "grocer_service_type_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string   "image_3_file_name"
    t.string   "image_3_content_type"
    t.integer  "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string   "image_4_file_name"
    t.string   "image_4_content_type"
    t.integer  "image_4_file_size"
    t.datetime "image_4_updated_at"
    t.string   "document_1_file_name"
    t.string   "document_1_content_type"
    t.integer  "document_1_file_size"
    t.datetime "document_1_updated_at"
    t.string   "document_2_file_name"
    t.string   "document_2_content_type"
    t.integer  "document_2_file_size"
    t.datetime "document_2_updated_at"
    t.string   "document_3_file_name"
    t.string   "document_3_content_type"
    t.integer  "document_3_file_size"
    t.datetime "document_3_updated_at"
    t.string   "document_4_file_name"
    t.string   "document_4_content_type"
    t.integer  "document_4_file_size"
    t.datetime "document_4_updated_at"
  end

  create_table "open_or_closes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "place_id"
    t.integer  "supermarket_id"
  end

  create_table "opening_hours", force: :cascade do |t|
    t.integer  "day_id"
    t.time     "opening"
    t.time     "closing"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "open_or_close_id"
  end

  create_table "place_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "places", force: :cascade do |t|
    t.string   "business_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "operating_address"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "website"
    t.text     "question_1"
    t.text     "question_2"
    t.text     "question_3"
    t.text     "question_4"
    t.text     "question_5"
    t.text     "question_6"
    t.string   "delivery_link"
    t.string   "reservation_link"
    t.boolean  "draft",                       default: true
    t.datetime "expiry_date"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "merchant_id"
    t.text     "friends_rewards_terms"
    t.boolean  "verified",                    default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "location_id"
    t.integer  "highlight_id"
    t.integer  "cuisine_type_id"
    t.integer  "dining_type_id"
    t.integer  "qualifying_type_id"
    t.integer  "friends_reward_id"
    t.integer  "region_id"
    t.integer  "place_type_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "price_range_id"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "day_id"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string   "image_3_file_name"
    t.string   "image_3_content_type"
    t.integer  "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string   "image_4_file_name"
    t.string   "image_4_content_type"
    t.integer  "image_4_file_size"
    t.datetime "image_4_updated_at"
    t.string   "document_1_file_name"
    t.string   "document_1_content_type"
    t.integer  "document_1_file_size"
    t.datetime "document_1_updated_at"
    t.string   "document_2_file_name"
    t.string   "document_2_content_type"
    t.integer  "document_2_file_size"
    t.datetime "document_2_updated_at"
    t.string   "document_3_file_name"
    t.string   "document_3_content_type"
    t.integer  "document_3_file_size"
    t.datetime "document_3_updated_at"
    t.string   "document_4_file_name"
    t.string   "document_4_content_type"
    t.integer  "document_4_file_size"
    t.datetime "document_4_updated_at"
    t.datetime "halal_expiry"
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.string   "stripe_id"
    t.float    "price"
    t.string   "interval"
    t.text     "features"
    t.boolean  "highlight"
    t.integer  "display_order"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "price_ranges", force: :cascade do |t|
    t.string   "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_sources", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "business_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "operating_address"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "website"
    t.string   "preferred_contact"
    t.text     "preferred_order_method"
    t.text     "question_1"
    t.text     "question_2"
    t.string   "delivery_url"
    t.datetime "expiry_date"
    t.text     "friends_terms"
    t.string   "merchant_id"
    t.boolean  "draft",                  default: true
    t.boolean  "verified",               default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "product_source_id"
    t.integer  "product_type_id"
    t.integer  "friends_reward_id"
    t.integer  "region_id"
  end

  create_table "qualifying_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_categories", force: :cascade do |t|
    t.integer  "service_type_id"
    t.integer  "ecommer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "service_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "shop_service_types", force: :cascade do |t|
    t.integer  "online_grocer_id"
    t.integer  "grocer_service_type_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "shop_types", force: :cascade do |t|
    t.integer  "grocer_type_id"
    t.integer  "online_grocer_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "stripe_id"
    t.integer  "plan_id"
    t.string   "last_four"
    t.integer  "coupon_id"
    t.string   "card_type"
    t.float    "current_price"
    t.integer  "merchant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "supermarket_features", force: :cascade do |t|
    t.integer  "supermarket_id"
    t.integer  "supermarket_highlight_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "supermarket_highlights", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "supermarkets", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "general_email"
    t.string   "general_contact_number"
    t.string   "operating_address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "website"
    t.string   "ordering_link"
    t.string   "facebook"
    t.string   "instagram"
    t.text     "question_1"
    t.text     "question_2"
    t.text     "question_3"
    t.text     "question_4"
    t.text     "question_5"
    t.datetime "expiry_date"
    t.integer  "day_id"
    t.text     "friends_rewards_terms"
    t.string   "merchant_id"
    t.boolean  "draft",                       default: true
    t.boolean  "verified",                    default: false
    t.integer  "friends_reward_id"
    t.integer  "region_id"
    t.integer  "location_id"
    t.integer  "qualifying_type_id"
    t.integer  "supermarket_highlight_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string   "image_3_file_name"
    t.string   "image_3_content_type"
    t.integer  "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string   "image_4_file_name"
    t.string   "image_4_content_type"
    t.integer  "image_4_file_size"
    t.datetime "image_4_updated_at"
    t.string   "document_1_file_name"
    t.string   "document_1_content_type"
    t.integer  "document_1_file_size"
    t.datetime "document_1_updated_at"
    t.string   "document_2_file_name"
    t.string   "document_2_content_type"
    t.integer  "document_2_file_size"
    t.datetime "document_2_updated_at"
    t.string   "document_3_file_name"
    t.string   "document_3_content_type"
    t.integer  "document_3_file_size"
    t.datetime "document_3_updated_at"
    t.string   "document_4_file_name"
    t.string   "document_4_content_type"
    t.integer  "document_4_file_size"
    t.datetime "document_4_updated_at"
  end

  create_table "supplier_features", force: :cascade do |t|
    t.integer  "supplier_id"
    t.integer  "supplier_highlight_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "supplier_highlights", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "supplier_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "business_name"
    t.string   "general_contact_number"
    t.string   "general_email"
    t.string   "operating_address"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "website"
    t.string   "preferred_contact"
    t.text     "preferred_order_method"
    t.text     "question_1"
    t.text     "question_2"
    t.text     "question_3"
    t.text     "question_4"
    t.text     "question_5"
    t.string   "delivery_url"
    t.datetime "expiry_date"
    t.text     "friends_terms"
    t.string   "merchant_id"
    t.boolean  "draft",                       default: true
    t.boolean  "verified",                    default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "friends_reward_id"
    t.integer  "supplier_type_id"
    t.integer  "product_type_id"
    t.integer  "region_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_2_file_name"
    t.string   "image_2_content_type"
    t.integer  "image_2_file_size"
    t.datetime "image_2_updated_at"
    t.string   "image_3_file_name"
    t.string   "image_3_content_type"
    t.integer  "image_3_file_size"
    t.datetime "image_3_updated_at"
    t.string   "image_4_file_name"
    t.string   "image_4_content_type"
    t.integer  "image_4_file_size"
    t.datetime "image_4_updated_at"
    t.string   "document_1_file_name"
    t.string   "document_1_content_type"
    t.integer  "document_1_file_size"
    t.datetime "document_1_updated_at"
    t.string   "document_2_file_name"
    t.string   "document_2_content_type"
    t.integer  "document_2_file_size"
    t.datetime "document_2_updated_at"
    t.string   "document_3_file_name"
    t.string   "document_3_content_type"
    t.integer  "document_3_file_size"
    t.datetime "document_3_updated_at"
    t.string   "document_4_file_name"
    t.string   "document_4_content_type"
    t.integer  "document_4_file_size"
    t.datetime "document_4_updated_at"
    t.integer  "food_type_id"
    t.integer  "price_range_id"
    t.integer  "qualifying_type_id"
    t.integer  "location_id"
    t.integer  "supplier_highlight_id"
  end

  create_table "teaching_types", force: :cascade do |t|
    t.integer  "lesson_type_id"
    t.integer  "lesson_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users_testimonials", force: :cascade do |t|
    t.string   "name"
    t.text     "testimonial"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "verifying_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
  end

end
