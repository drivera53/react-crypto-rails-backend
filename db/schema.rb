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

ActiveRecord::Schema.define(version: 2021_06_28_192542) do

  create_table "coins", force: :cascade do |t|
    t.string "coin_id"
    t.string "symbol"
    t.string "name"
    t.string "image"
    t.decimal "current_price"
    t.decimal "market_cap"
    t.decimal "market_cap_rank"
    t.decimal "total_volume"
    t.decimal "high_24h"
    t.decimal "low_24h"
    t.decimal "price_change_24h"
    t.decimal "price_change_percentage_24h"
    t.decimal "market_cap_change_24h"
    t.decimal "market_cap_change_percentage_24h"
    t.decimal "circulating_supply"
    t.decimal "total_supply"
    t.decimal "price_change_percentage_1h_in_currency"
    t.decimal "average_cost"
    t.decimal "quantity"
    t.decimal "total_value"
    t.decimal "total_return"
    t.decimal "total_return_percentage"
    t.integer "portfolio_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "initial_balance"
    t.decimal "total_value"
    t.decimal "buying_power"
    t.decimal "total_return"
    t.decimal "total_return_percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trades", force: :cascade do |t|
    t.string "name"
    t.string "coin_id"
    t.string "trade_type"
    t.decimal "price"
    t.integer "quantity"
    t.integer "portfolio_id"
    t.string "symbol"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
