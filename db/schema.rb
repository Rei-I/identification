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

ActiveRecord::Schema.define(version: 20160402115731) do

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_items", force: true do |t|
    t.integer  "customer_id",                 null: false
    t.string   "name",                        null: false
    t.boolean  "use_pokanon", default: false, null: false
    t.string   "qrcode"
    t.boolean  "use_qr",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_items", ["customer_id"], name: "product_items_customer_id_fk", using: :btree
  add_index "product_items", ["name"], name: "index_product_items_on_name", unique: true, using: :btree

  add_foreign_key "product_items", "customers", name: "product_items_customer_id_fk"

end
