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

ActiveRecord::Schema.define(version: 20171011214730) do

  create_table "catalogs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.boolean "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.boolean "state"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.boolean "state"
    t.integer "price"
    t.boolean "show_index"
    t.integer "user_id"
    t.integer "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products_sub_categories", id: false, force: :cascade do |t|
    t.integer "product_id"
    t.integer "sub_category_id"
    t.index ["product_id"], name: "index_products_sub_categories_on_product_id"
    t.index ["sub_category_id"], name: "index_products_sub_categories_on_sub_category_id"
  end

  create_table "products_sub_categories_associations", force: :cascade do |t|
    t.integer "product_id"
    t.integer "sub_category_id"
    t.index ["product_id"], name: "index_products_sub_categories_associations_on_product_id"
    t.index ["sub_category_id"], name: "index_products_sub_categories_associations_on_sub_category_id"
  end

  create_table "sliders", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.boolean "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.boolean "state"
    t.string "icon"
    t.integer "user_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.boolean "state"
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
    t.string "names"
    t.string "last_names"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
