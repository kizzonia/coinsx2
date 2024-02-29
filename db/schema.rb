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

ActiveRecord::Schema.define(version: 2024_01_17_213204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.string "body"
    t.string "abtimg"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_abouts_on_slug"
  end

  create_table "abouttrades", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.text "body"
    t.string "link"
    t.string "slug"
    t.string "icon"
    t.string "abouttradeimg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_abouttrades_on_slug"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "account_type"
    t.string "wallet"
    t.string "balance"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip_code"
    t.string "slug"
    t.float "rate"
    t.boolean "compound"
    t.float "roi"
    t.string "currency"
    t.string "tid"
    t.boolean "status"
    t.index ["slug"], name: "index_accounts_on_slug"
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "archives", force: :cascade do |t|
    t.string "title"
    t.string "month"
    t.string "year"
    t.string "slug"
    t.string "archimg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_archives_on_slug"
  end

  create_table "banners", force: :cascade do |t|
    t.string "bannerimg"
    t.string "title"
    t.string "sub_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.text "body"
    t.string "blogimg"
    t.string "videolink"
    t.string "blogvideoimg"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_blogs_on_slug"
  end

  create_table "boards", force: :cascade do |t|
    t.string "title"
    t.string "name"
    t.text "body"
    t.string "boardimg"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_boards_on_slug"
  end

  create_table "deposits", force: :cascade do |t|
    t.string "payment_type"
    t.string "amount"
    t.string "plan"
    t.string "email"
    t.boolean "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "confirmed"
    t.integer "account_id"
    t.index ["user_id"], name: "index_deposits_on_user_id"
  end

  create_table "faqs", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "fimg"
    t.string "title"
    t.string "sub_title"
    t.string "body"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_features_on_slug"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "icon"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_feedbacks_on_slug"
  end

  create_table "fxsignals", force: :cascade do |t|
    t.string "body"
    t.string "entry_point"
    t.string "exit_point"
    t.string "slug"
    t.string "stop_loss"
    t.string "sell_point1"
    t.string "sell_point2"
    t.string "tradetype"
    t.string "odds"
    t.string "status"
    t.string "date"
    t.string "pairs"
    t.string "leverage"
    t.string "call_type"
    t.string "exchange"
    t.string "sub"
    t.string "info"
    t.string "archive_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_fxsignals_on_slug"
    t.index ["status"], name: "index_fxsignals_on_status"
  end

  create_table "headers", force: :cascade do |t|
    t.string "abouts_title"
    t.string "abouts_sub_title"
    t.string "services_title"
    t.string "services_sub_title"
    t.string "boards_title"
    t.string "boards_sub_title"
    t.string "features_title"
    t.string "features_sub_title"
    t.string "feedbacks_title"
    t.string "feedbacks_sub_title"
    t.string "blogs_title"
    t.string "blogs_sub_title"
    t.string "projects_title"
    t.string "projects_sub_title"
    t.string "cta1"
    t.string "cta2"
    t.string "headerimg"
    t.string "plans_title"
    t.string "plans_sub_title"
    t.string "abouttrade_title"
    t.string "abouttrade_sub_title"
    t.string "tradeservices_title"
    t.string "tradeservices_sub_title"
    t.string "tradesignal_title"
    t.string "tradesignal_sub_title"
    t.string "servicemain_title"
    t.string "servicemain_sub_title"
    t.string "tradeplan_title"
    t.string "tradeplan_sub_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "amount"
    t.string "name"
    t.string "referal"
    t.string "duration"
    t.string "plan"
    t.string "plan_name"
    t.string "mini"
    t.string "maxi"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "roi"
  end

  create_table "pms", force: :cascade do |t|
    t.string "title"
    t.string "walletimg"
    t.string "address"
    t.string "con"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "sub_title"
    t.string "price"
    t.string "pimg"
    t.string "link"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_products_on_slug"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.string "icon"
    t.string "sub_title"
    t.text "body"
    t.string "serviceimg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_services_on_slug"
  end

  create_table "tradeplans", force: :cascade do |t|
    t.string "amount"
    t.string "name"
    t.string "referal"
    t.string "duration"
    t.string "plan"
    t.string "plan_name"
    t.string "mini"
    t.string "maxi"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trades", force: :cascade do |t|
    t.string "currency"
    t.string "deposit"
    t.string "expiration"
    t.boolean "status"
    t.string "tradetype"
    t.string "entry"
    t.string "rate"
    t.string "return"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_trades_on_user_id"
  end

  create_table "tradeservices", force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.string "icon"
    t.string "sub_title"
    t.text "body"
    t.string "tserviceimg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["slug"], name: "index_tradeservices_on_slug"
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
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "status"
    t.string "username"
    t.string "referal"
    t.string "phone"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "welcomes", force: :cascade do |t|
    t.string "title"
    t.string "logoimg"
    t.string "desc"
    t.string "whatsapp"
    t.string "ig"
    t.string "ln"
    t.string "section"
    t.string "link"
    t.string "footer"
    t.string "phone"
    t.string "address"
    t.string "twitter"
    t.string "email"
    t.string "youtube"
    t.string "telegram"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "withdraws", force: :cascade do |t|
    t.string "payment_type"
    t.string "amount"
    t.string "plan"
    t.string "email"
    t.boolean "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_withdraws_on_user_id"
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "deposits", "users"
  add_foreign_key "trades", "users"
  add_foreign_key "withdraws", "users"
end
