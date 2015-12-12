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

ActiveRecord::Schema.define(version: 20151211115233) do

  create_table "adm_logins", force: :cascade do |t|
    t.string   "user_id"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "adm_logins", ["user_id"], name: "index_adm_logins_on_user_id", unique: true

  create_table "collections", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "user_login_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "collections", ["post_id"], name: "index_collections_on_post_id"
  add_index "collections", ["user_login_id"], name: "index_collections_on_user_login_id"

  create_table "comments", force: :cascade do |t|
    t.date     "edit_time"
    t.string   "context_url"
    t.integer  "post_id"
    t.integer  "user_login_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"
  add_index "comments", ["user_login_id"], name: "index_comments_on_user_login_id"

  create_table "condidate_groups", force: :cascade do |t|
    t.string   "group_name"
    t.date     "create_time"
    t.string   "image_url"
    t.integer  "user_login_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "condidate_groups", ["group_name"], name: "index_condidate_groups_on_group_name", unique: true
  add_index "condidate_groups", ["user_login_id"], name: "index_condidate_groups_on_user_login_id"

  create_table "group_infos", force: :cascade do |t|
    t.string   "group_name"
    t.date     "create_time"
    t.string   "image_url"
    t.integer  "user_login_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "group_infos", ["group_name"], name: "index_group_infos_on_group_name", unique: true
  add_index "group_infos", ["user_login_id"], name: "index_group_infos_on_user_login_id"

  create_table "group_members", force: :cascade do |t|
    t.integer  "group_info_id"
    t.integer  "user_login_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "group_members", ["group_info_id"], name: "index_group_members_on_group_info_id"
  add_index "group_members", ["user_login_id"], name: "index_group_members_on_user_login_id"

  create_table "institutes", force: :cascade do |t|
    t.string   "inst_name"
    t.string   "provice"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "institutes", ["inst_name"], name: "index_institutes_on_inst_name", unique: true

  create_table "like_posts", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "user_login_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "like_posts", ["post_id"], name: "index_like_posts_on_post_id"
  add_index "like_posts", ["user_login_id"], name: "index_like_posts_on_user_login_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "context_url"
    t.date     "edit_time"
    t.boolean  "is_notice"
    t.integer  "group_info_id"
    t.integer  "user_login_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "posts", ["group_info_id"], name: "index_posts_on_group_info_id"
  add_index "posts", ["title"], name: "index_posts_on_title", unique: true
  add_index "posts", ["user_login_id"], name: "index_posts_on_user_login_id"

  create_table "user_infos", force: :cascade do |t|
    t.string   "gender"
    t.string   "nick_name"
    t.date     "birthday"
    t.string   "email"
    t.string   "image_url"
    t.string   "home_provice"
    t.string   "home_city"
    t.integer  "user_login_id"
    t.integer  "institute_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "user_infos", ["institute_id"], name: "index_user_infos_on_institute_id"
  add_index "user_infos", ["nick_name"], name: "index_user_infos_on_nick_name"
  add_index "user_infos", ["user_login_id"], name: "index_user_infos_on_user_login_id"

  create_table "user_logins", force: :cascade do |t|
    t.string   "user_id"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_logins", ["user_id"], name: "index_user_logins_on_user_id", unique: true

end
