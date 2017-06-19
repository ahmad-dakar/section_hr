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

ActiveRecord::Schema.define(version: 20170524205717) do

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",      limit: 25,                  null: false
    t.string   "last_name",       limit: 25,                  null: false
    t.string   "father_name",     limit: 25,                  null: false
    t.string   "mother_name",     limit: 25
    t.string   "identity_number", limit: 15,                  null: false
    t.datetime "birthday",                                    null: false
    t.string   "phone",                                       null: false
    t.string   "mobile",          limit: 14,                  null: false
    t.string   "temp_place",      limit: 100,                 null: false
    t.string   "permanent_place", limit: 100,                 null: false
    t.string   "permanent_phone", limit: 15,                  null: false
    t.boolean  "married",                     default: false
    t.integer  "children_num"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.index ["first_name"], name: "index_customers_on_first_name", using: :btree
  end

  create_table "permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "permission_date",   null: false
    t.string   "permission_string"
    t.integer  "customer_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "reason"
    t.string   "note"
    t.index ["customer_id"], name: "index_permissions_on_customer_id", using: :btree
  end

  create_table "rewards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "reward_date",   null: false
    t.string   "reward_string"
    t.integer  "customer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "reason"
    t.string   "note"
    t.index ["customer_id"], name: "index_rewards_on_customer_id", using: :btree
  end

  create_table "sanctions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "sanction_date",     null: false
    t.string   "sanction_string"
    t.integer  "customer_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.datetime "permission_date"
    t.string   "permission_string"
    t.string   "reason"
    t.string   "note"
    t.index ["customer_id"], name: "index_sanctions_on_customer_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vacations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "vacation_date", null: false
    t.integer  "period",        null: false
    t.string   "vacation_type"
    t.string   "reason"
    t.string   "note"
    t.integer  "customer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["customer_id"], name: "index_vacations_on_customer_id", using: :btree
  end

end
