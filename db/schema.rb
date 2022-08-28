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

ActiveRecord::Schema.define(version: 2022_08_28_103236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addon_order_items", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "order_item_id", null: false
    t.bigint "addon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["addon_id"], name: "index_addon_order_items_on_addon_id"
    t.index ["order_item_id"], name: "index_addon_order_items_on_order_item_id"
  end

  create_table "addons", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.boolean "is_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_addons_on_restaurant_id"
  end

  create_table "addons_menu_items", id: false, force: :cascade do |t|
    t.bigint "addon_id", null: false
    t.bigint "menu_item_id", null: false
    t.index ["addon_id", "menu_item_id"], name: "index_addons_menu_items_on_addon_id_and_menu_item_id"
    t.index ["menu_item_id", "addon_id"], name: "index_addons_menu_items_on_menu_item_id_and_addon_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "firt_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "customer_addresses", force: :cascade do |t|
    t.text "address"
    t.bigint "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_addresses_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "contact_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "customers_promos", id: false, force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "promo_id", null: false
  end

  create_table "cut_percentages", force: :cascade do |t|
    t.decimal "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "deal_deal_items", force: :cascade do |t|
    t.bigint "deal_id", null: false
    t.bigint "deal_item_id", null: false
    t.bigint "option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deal_id"], name: "index_deal_deal_items_on_deal_id"
    t.index ["deal_item_id"], name: "index_deal_deal_items_on_deal_item_id"
    t.index ["option_id"], name: "index_deal_deal_items_on_option_id"
  end

  create_table "deal_items", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "deal_itemable_type", null: false
    t.bigint "deal_itemable_id", null: false
    t.index ["deal_itemable_type", "deal_itemable_id"], name: "index_deal_items_on_deal_itemable"
  end

  create_table "deals", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.boolean "is_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discount_availability_schedules", force: :cascade do |t|
    t.bigint "discount_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discount_id"], name: "index_discount_availability_schedules_on_discount_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "title"
    t.integer "value"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "discount_type"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "joining_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.bigint "manager_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["manager_id"], name: "index_employees_on_manager_id"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
    t.index ["restaurant_id"], name: "index_employees_on_restaurant_id"
  end

  create_table "food_item_options", force: :cascade do |t|
    t.integer "price"
    t.bigint "food_item_id", null: false
    t.bigint "option_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_item_id"], name: "index_food_item_options_on_food_item_id"
    t.index ["option_id"], name: "index_food_item_options_on_option_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.bigint "discount_id"
    t.bigint "item_group_id"
    t.index ["discount_id"], name: "index_food_items_on_discount_id"
    t.index ["item_group_id"], name: "index_food_items_on_item_group_id"
    t.index ["restaurant_id"], name: "index_food_items_on_restaurant_id"
  end

  create_table "item_groups", force: :cascade do |t|
    t.string "title"
    t.boolean "is_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_item_groups_on_restaurant_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "title"
    t.boolean "is_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.bigint "menu_id", null: false
    t.string "menu_itemable_type", null: false
    t.bigint "menu_itemable_id", null: false
    t.index ["menu_id"], name: "index_menu_items_on_menu_id"
    t.index ["menu_itemable_type", "menu_itemable_id"], name: "index_menu_items_on_menu_itemable"
    t.index ["restaurant_id"], name: "index_menu_items_on_restaurant_id"
  end

  create_table "menu_items_menus", id: false, force: :cascade do |t|
    t.bigint "menu_id", null: false
    t.bigint "menu_item_id", null: false
    t.index ["menu_id", "menu_item_id"], name: "index_menu_items_menus_on_menu_id_and_menu_item_id"
    t.index ["menu_item_id", "menu_id"], name: "index_menu_items_menus_on_menu_item_id_and_menu_id"
  end

  create_table "menu_schedules", force: :cascade do |t|
    t.string "day"
    t.bigint "menu_id", null: false
    t.time "starting_time"
    t.time "ending_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_menu_schedules_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.boolean "is_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.bigint "item_group_id", null: false
    t.index ["item_group_id"], name: "index_options_on_item_group_id"
    t.index ["restaurant_id"], name: "index_options_on_restaurant_id"
  end

  create_table "options_order_items", id: false, force: :cascade do |t|
    t.bigint "order_item_id", null: false
    t.bigint "option_id", null: false
    t.index ["option_id", "order_item_id"], name: "index_options_order_items_on_option_id_and_order_item_id"
    t.index ["order_item_id", "option_id"], name: "index_options_order_items_on_order_item_id_and_option_id"
  end

  create_table "order_item_food_items", force: :cascade do |t|
    t.bigint "order_item_id", null: false
    t.integer "deal_id"
    t.integer "item_group_id"
    t.bigint "food_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_item_id"], name: "index_order_item_food_items_on_food_item_id"
    t.index ["order_item_id"], name: "index_order_item_food_items_on_order_item_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.string "title"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", null: false
    t.string "order_itemable_type", null: false
    t.bigint "order_itemable_id", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["order_itemable_type", "order_itemable_id"], name: "index_order_items_on_order_itemable"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "time_placed"
    t.datetime "time_received"
    t.string "order_status"
    t.boolean "is_deleted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "employee_id", null: false
    t.bigint "promo_id"
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["employee_id"], name: "index_orders_on_employee_id"
    t.index ["promo_id"], name: "index_orders_on_promo_id"
  end

  create_table "payments", force: :cascade do |t|
    t.datetime "date"
    t.string "method"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id"
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  create_table "promo_availability_schedules", force: :cascade do |t|
    t.bigint "promo_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["promo_id"], name: "index_promo_availability_schedules_on_promo_id"
  end

  create_table "promos", force: :cascade do |t|
    t.string "title"
    t.integer "value"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "promo_type"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "value"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_ratings_on_customer_id"
    t.index ["order_id"], name: "index_ratings_on_order_id"
  end

  create_table "restaurant_payments", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.bigint "order_id", null: false
    t.index ["order_id"], name: "index_restaurant_payments_on_order_id"
    t.index ["restaurant_id"], name: "index_restaurant_payments_on_restaurant_id"
  end

  create_table "restaurant_schedules", force: :cascade do |t|
    t.string "day"
    t.bigint "restaurant_id", null: false
    t.time "opening_time"
    t.time "closing_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_restaurant_schedules_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.boolean "is_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_charge_payments", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", null: false
    t.index ["order_id"], name: "index_service_charge_payments_on_order_id"
  end

  add_foreign_key "addon_order_items", "addons"
  add_foreign_key "addon_order_items", "order_items"
  add_foreign_key "addons", "restaurants"
  add_foreign_key "customer_addresses", "customers"
  add_foreign_key "deal_deal_items", "deal_items"
  add_foreign_key "deal_deal_items", "deals"
  add_foreign_key "deal_deal_items", "options"
  add_foreign_key "discount_availability_schedules", "discounts"
  add_foreign_key "employees", "employees", column: "manager_id"
  add_foreign_key "employees", "restaurants"
  add_foreign_key "food_item_options", "food_items"
  add_foreign_key "food_item_options", "options"
  add_foreign_key "food_items", "discounts"
  add_foreign_key "food_items", "item_groups"
  add_foreign_key "food_items", "restaurants"
  add_foreign_key "item_groups", "restaurants"
  add_foreign_key "menu_items", "menus"
  add_foreign_key "menu_items", "restaurants"
  add_foreign_key "menu_schedules", "menus"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "options", "item_groups"
  add_foreign_key "options", "restaurants"
  add_foreign_key "order_item_food_items", "food_items"
  add_foreign_key "order_item_food_items", "order_items"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
  add_foreign_key "orders", "promos"
  add_foreign_key "payments", "orders"
  add_foreign_key "promo_availability_schedules", "promos"
  add_foreign_key "ratings", "customers"
  add_foreign_key "ratings", "orders"
  add_foreign_key "restaurant_payments", "orders"
  add_foreign_key "restaurant_payments", "restaurants"
  add_foreign_key "restaurant_schedules", "restaurants"
  add_foreign_key "service_charge_payments", "orders"
end
