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

ActiveRecord::Schema.define(version: 20160301194741) do

  create_table "comments_don_and_seeks", force: :cascade do |t|
    t.integer  "donator_id"
    t.integer  "don_and_seek_connect_id"
    t.integer  "organization_id"
    t.string   "body"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "comments_org_donor_toys", force: :cascade do |t|
    t.integer  "donator_id"
    t.integer  "organization_id"
    t.integer  "org_and_toy_connect_id"
    t.string   "body"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "don_and_seek_connects", force: :cascade do |t|
    t.integer  "donator_id"
    t.integer  "seek_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organization_id"
    t.boolean  "active"
  end

  create_table "donators", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "donors_toys", force: :cascade do |t|
    t.integer  "toy_id"
    t.integer  "donator_id"
    t.string   "reason_for_donation"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.boolean  "active"
    t.boolean  "sent"
  end

  create_table "org_and_toy_connects", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "donors_toy_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "donator_id"
    t.boolean  "active"
  end

  create_table "org_profiles", force: :cascade do |t|
    t.string   "address"
    t.string   "website"
    t.string   "name"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "address"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "received_toys", force: :cascade do |t|
    t.integer  "donors_toy_id"
    t.integer  "organization_id"
    t.integer  "donator_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "seek_id"
    t.integer  "org_and_toy_connect_id"
    t.integer  "don_and_seek_connect_id"
  end

  create_table "seeks", force: :cascade do |t|
    t.integer  "organization_id"
    t.string   "comment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "toy_id"
    t.boolean  "active"
    t.boolean  "sent"
  end

  create_table "toys", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "donator_id"
    t.string   "category"
    t.string   "age_range"
    t.string   "description"
  end

end
