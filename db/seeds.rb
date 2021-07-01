# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

portfolio1 = Portfolio.create(:name => "Doge Portfolio", :description => "Testing Doge", :initial_balance => 1000000, :buying_power => 1000000)
trade1 = Trade.create(:name => "Bitcoin", :trade_type => "buy", :coin_id => "bitcoin", :price => 109, :quantity => 90, :portfolio_id => 1)
Coin1 = Coin.create(:name => "Bitcoin", :coin_id => "bitcoin", :average_cost => 909, :quantity => 90, :portfolio_id => 1, :image => "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579")
Coin2 = Coin.create(:coin_id => "ethereum", :average_cost => 1909, :quantity => 90, :portfolio_id => 1)
Coin3 = Coin.create(:coin_id => "tether", :average_cost => 1909, :quantity => 90, :portfolio_id => 1)
Coin4 = Coin.create(:coin_id => "cardano", :average_cost => 1909, :quantity => 90, :portfolio_id => 1)