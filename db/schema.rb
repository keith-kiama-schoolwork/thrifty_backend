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

ActiveRecord::Schema[7.0].define(version: 2023_03_28_111415) do
  create_table "accounts", force: :cascade do |t|
    t.string "account_number"
    t.string "user_id"
  end

  create_table "product_reviews", force: :cascade do |t|
    t.string "product_id"
    t.string "user_id"
    t.string "user_image"
    t.string "comment"
  end

  create_table "products", force: :cascade do |t|
    t.string "image_url"
    t.string "name"
    t.string "price"
    t.string "category"
  end

  create_table "user_reviews", force: :cascade do |t|
    t.string "user_id", null: false
    t.string "user_image"
    t.string "comment", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "image_url"
    t.string "password_digest"
  end

end
