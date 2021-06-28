class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string :coin_id
      t.string :symbol
      t.string :name
      t.string :image
      t.decimal :current_price
      t.decimal :market_cap
      t.decimal :market_cap_rank
      t.decimal :total_volume
      t.decimal :high_24h
      t.decimal :low_24h
      t.decimal :price_change_24h
      t.decimal :price_change_percentage_24h
      t.decimal :market_cap_change_24h
      t.decimal :market_cap_change_percentage_24h
      t.decimal :circulating_supply
      t.decimal :total_supply
      t.decimal :price_change_percentage_1h_in_currency
      t.decimal :average_cost
      t.decimal :quantity
      t.decimal :total_value
      t.decimal :total_return
      t.decimal :total_return_percentage

      t.timestamps
    end
  end
end
