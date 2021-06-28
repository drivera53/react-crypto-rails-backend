require "test_helper"

class CoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coin = coins(:one)
  end

  test "should get index" do
    get coins_url, as: :json
    assert_response :success
  end

  test "should create coin" do
    assert_difference('Coin.count') do
      post coins_url, params: { coin: { average_cost: @coin.average_cost, circulating_supply: @coin.circulating_supply, coin_id: @coin.coin_id, current_price: @coin.current_price, high_24h: @coin.high_24h, image: @coin.image, low_24h: @coin.low_24h, market_cap: @coin.market_cap, market_cap_change_24h: @coin.market_cap_change_24h, market_cap_change_percentage_24h: @coin.market_cap_change_percentage_24h, market_cap_rank: @coin.market_cap_rank, name: @coin.name, price_change_24h: @coin.price_change_24h, price_change_percentage_1h_in_currency: @coin.price_change_percentage_1h_in_currency, price_change_percentage_24h: @coin.price_change_percentage_24h, quantity: @coin.quantity, symbol: @coin.symbol, total_return: @coin.total_return, total_return_percentage: @coin.total_return_percentage, total_supply: @coin.total_supply, total_value: @coin.total_value, total_volume: @coin.total_volume } }, as: :json
    end

    assert_response 201
  end

  test "should show coin" do
    get coin_url(@coin), as: :json
    assert_response :success
  end

  test "should update coin" do
    patch coin_url(@coin), params: { coin: { average_cost: @coin.average_cost, circulating_supply: @coin.circulating_supply, coin_id: @coin.coin_id, current_price: @coin.current_price, high_24h: @coin.high_24h, image: @coin.image, low_24h: @coin.low_24h, market_cap: @coin.market_cap, market_cap_change_24h: @coin.market_cap_change_24h, market_cap_change_percentage_24h: @coin.market_cap_change_percentage_24h, market_cap_rank: @coin.market_cap_rank, name: @coin.name, price_change_24h: @coin.price_change_24h, price_change_percentage_1h_in_currency: @coin.price_change_percentage_1h_in_currency, price_change_percentage_24h: @coin.price_change_percentage_24h, quantity: @coin.quantity, symbol: @coin.symbol, total_return: @coin.total_return, total_return_percentage: @coin.total_return_percentage, total_supply: @coin.total_supply, total_value: @coin.total_value, total_volume: @coin.total_volume } }, as: :json
    assert_response 200
  end

  test "should destroy coin" do
    assert_difference('Coin.count', -1) do
      delete coin_url(@coin), as: :json
    end

    assert_response 204
  end
end
