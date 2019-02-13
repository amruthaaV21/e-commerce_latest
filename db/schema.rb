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

ActiveRecord::Schema.define(version: 20190212052715) do

  create_table "addresses", force: :cascade do |t|
    t.integer "address_id"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer "category_id"
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_categories_products_on_category_id"
    t.index ["product_id"], name: "index_categories_products_on_product_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.integer "discount_id"
    t.string "discount_type"
    t.decimal "discount_percent"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "discount_id", null: false
    t.index ["discount_id"], name: "index_discounts_products_on_discount_id"
    t.index ["product_id"], name: "index_discounts_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "buyer_id"
    t.integer "total_price"
    t.string "payment_method"
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "product_id"
    t.string "porduct_name"
    t.decimal "price"
    t.integer "quantity_in_stock"
    t.boolean "discount"
    t.integer "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer "role_id"
    t.string "role_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
    t.index ["role_id"], name: "index_roles_users_on_role_id"
    t.index ["user_id"], name: "index_roles_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_name"
    t.string "email"
    t.string "provider"
    t.string "uid"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wishes", force: :cascade do |t|
    t.integer "wish_id"
    t.integer "wish_item_id"
    t.integer "wish_quantity"
    t.integer "purchased_quantity"
    t.boolean "purchase_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
