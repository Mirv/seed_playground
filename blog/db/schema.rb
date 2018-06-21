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

ActiveRecord::Schema.define(version: 20180620121008) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment10s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.string   "something"
    t.string   "somethingelse"
    t.string   "more"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comment10s", ["post_id"], name: "index_comment10s_on_post_id"

  create_table "comment11s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment11s", ["post_id"], name: "index_comment11s_on_post_id"

  create_table "comment12s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment12s", ["post_id"], name: "index_comment12s_on_post_id"

  create_table "comment13s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment13s", ["post_id"], name: "index_comment13s_on_post_id"

  create_table "comment14s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment14s", ["post_id"], name: "index_comment14s_on_post_id"

  create_table "comment15s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment15s", ["post_id"], name: "index_comment15s_on_post_id"

  create_table "comment16s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment16s", ["post_id"], name: "index_comment16s_on_post_id"

  create_table "comment17s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment17s", ["post_id"], name: "index_comment17s_on_post_id"

  create_table "comment18s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment18s", ["post_id"], name: "index_comment18s_on_post_id"

  create_table "comment19s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment19s", ["post_id"], name: "index_comment19s_on_post_id"

  create_table "comment20s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "something"
    t.string   "somethingelse"
    t.string   "something_more"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comment20s", ["post_id"], name: "index_comment20s_on_post_id"

  create_table "comment2s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.string   "something"
    t.string   "somethingelse"
    t.string   "more"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comment2s", ["post_id"], name: "index_comment2s_on_post_id"

  create_table "comment3s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.string   "something"
    t.string   "somethingelse"
    t.string   "more"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comment3s", ["post_id"], name: "index_comment3s_on_post_id"

  create_table "comment4s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.string   "something"
    t.string   "somethingelse"
    t.string   "more"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comment4s", ["post_id"], name: "index_comment4s_on_post_id"

  create_table "comment5s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.string   "something"
    t.string   "somethingelse"
    t.string   "more"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comment5s", ["post_id"], name: "index_comment5s_on_post_id"

  create_table "comment6s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.string   "something"
    t.string   "somethingelse"
    t.string   "more"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comment6s", ["post_id"], name: "index_comment6s_on_post_id"

  create_table "comment7s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.string   "something"
    t.string   "somethingelse"
    t.string   "more"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comment7s", ["post_id"], name: "index_comment7s_on_post_id"

  create_table "comment8s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.string   "something"
    t.string   "somethingelse"
    t.string   "more"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comment8s", ["post_id"], name: "index_comment8s_on_post_id"

  create_table "comment9s", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.string   "something"
    t.string   "somethingelse"
    t.string   "more"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comment9s", ["post_id"], name: "index_comment9s_on_post_id"

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "posts", force: :cascade do |t|
    t.string   "name"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["author_id"], name: "index_posts_on_author_id"

end
