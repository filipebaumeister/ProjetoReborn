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

ActiveRecord::Schema.define(version: 20161212143935) do

  create_table "accounts", force: :cascade do |t|
    t.string   "BANK"
    t.string   "AGENCY"
    t.string   "ACCOUNT_CODE"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "NAME"
    t.string   "CHASSI"
    t.integer  "STATUS"
    t.date     "FABYEAR"
    t.date     "MODELYEAR"
    t.integer  "FUEL"
    t.float    "KM"
    t.boolean  "NEW"
    t.string   "COLOREX"
    t.string   "COLORIN"
    t.string   "PLATE"
    t.integer  "TRANSMISSION"
    t.decimal  "FIPEVALUE"
    t.decimal  "BUYVALUE"
    t.decimal  "SELLVALUE"
    t.string   "SPECS"
    t.string   "FILIAL"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customerproviders", force: :cascade do |t|
    t.string   "NAME"
    t.string   "ADDRESS"
    t.string   "EMAIL"
    t.datetime "BIRTHDAY"
    t.string   "CPFCNPJ"
    t.string   "FISOUJUR"
    t.string   "PHONE1"
    t.string   "PHONE2"
    t.string   "CUSPRO"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "financials", force: :cascade do |t|
    t.string   "NATURE"
    t.boolean  "PAID"
    t.date     "DATE_EMISSION"
    t.date     "DATE_DUE"
    t.date     "DATE_PAYMENT"
    t.decimal  "VALUE"
    t.decimal  "DISCOUNT"
    t.decimal  "MULCT"
    t.decimal  "INTEREST"
    t.decimal  "VALUE_PAID"
    t.text     "HISTORY"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "customerprovider_id"
    t.integer  "account_id"
    t.integer  "record_id"
  end

  add_index "financials", ["account_id"], name: "index_financials_on_account_id"
  add_index "financials", ["customerprovider_id"], name: "index_financials_on_customerprovider_id"
  add_index "financials", ["record_id"], name: "index_financials_on_record_id"

  create_table "invoices", force: :cascade do |t|
    t.integer  "DOCUMENT_NUMBER"
    t.decimal  "VALUE"
    t.decimal  "DESCOUNT"
    t.decimal  "ADDITION"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "NAME"
    t.integer  "TYPE"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perfil_processes", force: :cascade do |t|
    t.integer  "perfil_id"
    t.integer  "procc_id"
    t.boolean  "ABLE"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "perfil_processes", ["perfil_id"], name: "index_perfil_processes_on_perfil_id"
  add_index "perfil_processes", ["procc_id"], name: "index_perfil_processes_on_procc_id"

  create_table "perfils", force: :cascade do |t|
    t.string   "NAME"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proccs", force: :cascade do |t|
    t.string   "NAME"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rebuilds", force: :cascade do |t|
    t.decimal  "VALUE"
    t.text     "HISTORY"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "car_id"
  end

  add_index "rebuilds", ["car_id"], name: "index_rebuilds_on_car_id"

  create_table "records", force: :cascade do |t|
    t.date     "DATE_EMISSION"
    t.string   "FINANCIAL_OP_TYPE"
    t.decimal  "COEF"
    t.decimal  "VALUE_FINANCED"
    t.decimal  "QT_PORTION"
    t.decimal  "VALUE_PORTION"
    t.decimal  "VALUE_TOTAL"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "account_id"
    t.integer  "customerprovider_id"
    t.integer  "car_id"
    t.integer  "payment_method_id"
  end

  add_index "records", ["account_id"], name: "index_records_on_account_id"
  add_index "records", ["car_id"], name: "index_records_on_car_id"
  add_index "records", ["customerprovider_id"], name: "index_records_on_customerprovider_id"
  add_index "records", ["payment_method_id"], name: "index_records_on_payment_method_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "perfil_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["perfil_id"], name: "index_users_on_perfil_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
