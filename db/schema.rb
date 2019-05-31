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

ActiveRecord::Schema.define(version: 2019_05_30_221619) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "number"
    t.string "colony"
    t.string "interior_number"
    t.integer "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_addresses_on_city_id"
  end

  create_table "billing_informations", force: :cascade do |t|
    t.string "rfc"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branch_offices", force: :cascade do |t|
    t.string "branch_office_name"
    t.integer "branch_office_phone"
    t.string "branch_office_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "address_id"
    t.index ["address_id"], name: "index_branch_offices_on_address_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "state_id"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.string "client_lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "billing_information_id"
    t.integer "shipping_information_id"
    t.integer "address_id"
    t.index ["address_id"], name: "index_clients_on_address_id"
    t.index ["billing_information_id"], name: "index_clients_on_billing_information_id"
    t.index ["shipping_information_id"], name: "index_clients_on_shipping_information_id"
  end

  create_table "load_shippings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "load_id"
    t.integer "shipping_id"
    t.index ["load_id"], name: "index_load_shippings_on_load_id"
    t.index ["shipping_id"], name: "index_load_shippings_on_shipping_id"
  end

  create_table "loads", force: :cascade do |t|
    t.date "load_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "branch_office_id"
    t.integer "export_branch_office_id"
    t.integer "worker_id"
    t.integer "vehicle_id"
    t.index ["branch_office_id"], name: "index_loads_on_branch_office_id"
    t.index ["export_branch_office_id"], name: "index_loads_on_export_branch_office_id"
    t.index ["vehicle_id"], name: "index_loads_on_vehicle_id"
    t.index ["worker_id"], name: "index_loads_on_worker_id"
  end

  create_table "packages", force: :cascade do |t|
    t.integer "quantity"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "shipping_id"
    t.index ["shipping_id"], name: "index_packages_on_shipping_id"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pick_ups", force: :cascade do |t|
    t.string "is_done"
    t.date "schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
    t.integer "address_id"
    t.integer "branch_office_id"
    t.index ["address_id"], name: "index_pick_ups_on_address_id"
    t.index ["branch_office_id"], name: "index_pick_ups_on_branch_office_id"
    t.index ["client_id"], name: "index_pick_ups_on_client_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipping_informations", force: :cascade do |t|
    t.integer "phone"
    t.string "additional_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "address_id"
    t.index ["address_id"], name: "index_shipping_informations_on_address_id"
  end

  create_table "shippings", force: :cascade do |t|
    t.date "expedition_date"
    t.date "delivery_date"
    t.string "ship_type"
    t.string "authorization_sign"
    t.string "delivery_sign"
    t.integer "package_number"
    t.float "delivery_cost"
    t.float "insurance_cost"
    t.float "pick_up_cost"
    t.float "taxes"
    t.float "final_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "address_id"
    t.integer "payment_method_id"
    t.integer "status_id"
    t.integer "worker_id"
    t.integer "sender_client_id"
    t.integer "adressee_client_id"
    t.integer "delivery_branch_office_id"
    t.integer "expedition_branch_office_id"
    t.index ["address_id"], name: "index_shippings_on_address_id"
    t.index ["adressee_client_id"], name: "index_shippings_on_adressee_client_id"
    t.index ["delivery_branch_office_id"], name: "index_shippings_on_delivery_branch_office_id"
    t.index ["expedition_branch_office_id"], name: "index_shippings_on_expedition_branch_office_id"
    t.index ["payment_method_id"], name: "index_shippings_on_payment_method_id"
    t.index ["sender_client_id"], name: "index_shippings_on_sender_client_id"
    t.index ["status_id"], name: "index_shippings_on_status_id"
    t.index ["worker_id"], name: "index_shippings_on_worker_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "state_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status"
    t.date "status_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "branch_office_id"
    t.index ["branch_office_id"], name: "index_statuses_on_branch_office_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "brand"
    t.integer "year"
    t.string "model"
    t.string "color"
    t.string "license_plate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "last_name", null: false
    t.string "gender", null: false
    t.string "phone"
    t.boolean "admin", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role_id", default: 1, null: false
    t.integer "address_id", default: 1, null: false
    t.integer "branch_office_id", default: 1, null: false
    t.index ["address_id"], name: "index_workers_on_address_id"
    t.index ["branch_office_id"], name: "index_workers_on_branch_office_id"
    t.index ["email"], name: "index_workers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_workers_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_workers_on_role_id"
  end

end
