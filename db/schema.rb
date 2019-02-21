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

ActiveRecord::Schema.define(version: 20190221141526) do

  create_table "addresses", force: :cascade do |t|
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "address_id", null: false
    t.index ["address_id"], name: "index_addresses_users_on_address_id"
    t.index ["user_id"], name: "index_addresses_users_on_user_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "allowed_access"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_admins_on_user_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "card_number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_buyers_on_user_id"
  end

  create_table "buyers_sellers", id: false, force: :cascade do |t|
    t.integer "buyer_id", null: false
    t.integer "seller_id", null: false
    t.index ["buyer_id"], name: "index_buyers_sellers_on_buyer_id"
    t.index ["seller_id"], name: "index_buyers_sellers_on_seller_id"
  end

  create_table "buyers_wishes", id: false, force: :cascade do |t|
    t.integer "buyer_id", null: false
    t.integer "wish_id", null: false
    t.index ["buyer_id"], name: "index_buyers_wishes_on_buyer_id"
    t.index ["wish_id"], name: "index_buyers_wishes_on_wish_id"
  end

  create_table "categories", force: :cascade do |t|
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

  create_table "images", force: :cascade do |t|
    t.binary "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "image_id", null: false
    t.index ["image_id"], name: "index_images_products_on_image_id"
    t.index ["product_id"], name: "index_images_products_on_product_id"
  end

  create_table "images_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "image_id", null: false
    t.index ["image_id"], name: "index_images_users_on_image_id"
    t.index ["user_id"], name: "index_images_users_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "total_price"
    t.string "payment_method"
    t.string "order_status"
    t.integer "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "quantity_in_stock"
    t.boolean "discount"
    t.integer "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_products_on_seller_id"
  end

  create_table "roles", force: :cascade do |t|
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

  create_table "sellers", force: :cascade do |t|
    t.string "company_name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sellers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishes", force: :cascade do |t|
    t.integer "wish_quantity"
    t.integer "purchased_quantity"
    t.boolean "purchase_status"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_wishes_on_product_id"
  end

end
