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

ActiveRecord::Schema.define(version: 20180224223210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "code"
    t.string "country"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_id", "addressable_type"], name: "index_addresses_on_addressable_id_and_addressable_type"
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "beer_styles", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "category_id"
    t.integer "external_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_beer_styles_on_category_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name", null: false
    t.float "abv"
    t.integer "ibu"
    t.text "description"
    t.bigint "brewery_id"
    t.bigint "beer_style_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_style_id"], name: "index_beers_on_beer_style_id"
    t.index ["brewery_id"], name: "index_beers_on_brewery_id"
    t.index ["category_id"], name: "index_beers_on_category_id"
    t.index ["name"], name: "index_beers_on_name"
  end

  create_table "breweries", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone"
    t.string "website"
    t.string "description"
    t.integer "external_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.integer "external_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
