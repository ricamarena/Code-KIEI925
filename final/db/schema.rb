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

ActiveRecord::Schema.define(version: 0) do

  create_table "authors", force: true do |t|
    t.string  "name"
    t.string  "work"
    t.text    "bio"
    t.integer "user_id"
    t.string  "facebook"
    t.string  "twitter"
    t.string  "linkedin"
    t.string  "blog"
  end

  add_index "authors", ["user_id"], name: "index_authors_on_user_id"

  create_table "companies", force: true do |t|
    t.string "name"
    t.string "website"
    t.text   "summary"
    t.string "facebook"
    t.string "twitter"
    t.string "linkedin"
  end

  create_table "funds", force: true do |t|
    t.string  "name"
    t.integer "website"
    t.string  "targettype"
    t.integer "targetamount"
    t.string  "facebook"
    t.string  "twitter"
    t.string  "linkedin"
  end

  create_table "managers", force: true do |t|
    t.integer "person_id"
    t.integer "company_id"
    t.integer "fund_id"
    t.boolean "current",    default: false
  end

  add_index "managers", ["company_id"], name: "index_managers_on_company_id"
  add_index "managers", ["fund_id"], name: "index_managers_on_fund_id"
  add_index "managers", ["person_id"], name: "index_managers_on_person_id"

  create_table "news", force: true do |t|
    t.string  "title"
    t.text    "summary"
    t.integer "author_id"
    t.string  "content"
    t.integer "source_id"
    t.string  "date"
    t.string  "time"
  end

  add_index "news", ["author_id"], name: "index_news_on_author_id"
  add_index "news", ["source_id"], name: "index_news_on_source_id"

  create_table "people", force: true do |t|
    t.string  "name"
    t.text    "bio"
    t.integer "user_id"
    t.string  "facebook"
    t.string  "twitter"
    t.string  "linkedin"
    t.string  "blog"
  end

  add_index "people", ["user_id"], name: "index_people_on_user_id"

  create_table "sources", force: true do |t|
    t.string  "name"
    t.integer "website"
    t.string  "summary"
    t.string  "facebook"
    t.string  "twitter"
  end

end
