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

ActiveRecord::Schema.define(version: 2021_08_28_081540) do

  create_table "accounts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email", limit: 100, null: false
    t.string "phone"
    t.boolean "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "accounts_blog_reviews", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.bigint "blog_review_id", null: false
    t.boolean "like_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_accounts_blog_reviews_on_account_id"
    t.index ["blog_review_id"], name: "index_accounts_blog_reviews_on_blog_review_id"
  end

  create_table "blog_reviews", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.float "price"
    t.string "address"
    t.bigint "account_id", null: false
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_blog_reviews_on_account_id"
  end

  create_table "book_tours", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "tour_id", null: false
    t.bigint "account_id", null: false
    t.float "total_price"
    t.datetime "booking_start_date"
    t.boolean "status"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_book_tours_on_account_id"
    t.index ["tour_id"], name: "index_book_tours_on_tour_id"
  end

  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "tour_id", null: false
    t.bigint "account_id", null: false
    t.text "content"
    t.integer "comment_parent_id", null: false
    t.integer "rating"
    t.boolean "status", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_comments_on_account_id"
    t.index ["comment_parent_id"], name: "index_comments_on_comment_parent_id"
    t.index ["tour_id"], name: "index_comments_on_tour_id"
  end

  create_table "images", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "url"
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["imageable_id"], name: "index_images_on_imageable_id"
  end

  create_table "tours", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.string "title"
    t.text "description"
    t.float "price"
    t.integer "num_of_paticipants"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_tours_on_category_id"
  end

  add_foreign_key "accounts_blog_reviews", "accounts"
  add_foreign_key "accounts_blog_reviews", "blog_reviews"
  add_foreign_key "blog_reviews", "accounts"
  add_foreign_key "book_tours", "accounts"
  add_foreign_key "book_tours", "tours"
  add_foreign_key "comments", "accounts"
  add_foreign_key "comments", "tours"
  add_foreign_key "tours", "categories"
end
