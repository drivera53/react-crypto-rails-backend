class CoinSerializer < ActiveModel::Serializer
  attributes :id, :coin_id, :symbol, :name, :image, :current_price, :market_cap, :market_cap_rank, :total_volume, :high_24h, :low_24h, :price_change_24h, :price_change_percentage_24h, :market_cap_change_24h, :market_cap_change_percentage_24h, :circulating_supply, :total_supply, :price_change_percentage_1h_in_currency, :average_cost, :quantity, :total_value, :total_return, :total_return_percentage
end
