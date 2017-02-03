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

ActiveRecord::Schema.define(version: 20170201150950) do

  create_table "hops", force: true do |t|
    t.float    "alfa_acid"
    t.float    "beta_acid"
    t.float    "total_oil"
    t.integer  "hops_form_id", limit: 255
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hops_forms", force: true do |t|
    t.string   "form"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hops_recipes", force: true do |t|
    t.integer "hop_id"
    t.integer "recipe_id"
  end

  add_index "hops_recipes", ["hop_id"], name: "index_hops_recipes_on_hop_id"
  add_index "hops_recipes", ["recipe_id"], name: "index_hops_recipes_on_recipe_id"

  create_table "malt_addition_moments", force: true do |t|
    t.string "CreateRecipes"
  end

  create_table "malt_additions", force: true do |t|
    t.integer "malt_id"
    t.integer "recipe_id"
    t.float   "amount"
    t.integer "malt_addition_moment_id"
  end

  create_table "malts", force: true do |t|
    t.string   "name"
    t.integer  "extract"
    t.integer  "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.date     "planned_date"
    t.date     "start_date"
    t.string   "status"
    t.integer  "start_water_id"
    t.integer  "mash_water_id"
    t.integer  "yeast_id"
    t.integer  "brewmaster_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes_salts", force: true do |t|
    t.integer "salt_id"
    t.integer "recipe_id"
  end

  add_index "recipes_salts", ["recipe_id"], name: "index_recipes_salts_on_recipe_id"
  add_index "recipes_salts", ["salt_id"], name: "index_recipes_salts_on_salt_id"

  create_table "recipes_users", force: true do |t|
    t.integer "user_id"
    t.integer "recipe_id"
  end

  create_table "salts", force: true do |t|
    t.string   "name"
    t.string   "mineral"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "waters", force: true do |t|
    t.string   "name"
    t.float    "alkalinity"
    t.float    "acidity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "yeasts", force: true do |t|
    t.integer  "esters"
    t.integer  "superior_alcohols"
    t.integer  "residular_sugar"
    t.integer  "flocculation"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
