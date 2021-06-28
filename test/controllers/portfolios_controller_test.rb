require "test_helper"

class PortfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portfolio = portfolios(:one)
  end

  test "should get index" do
    get portfolios_url, as: :json
    assert_response :success
  end

  test "should create portfolio" do
    assert_difference('Portfolio.count') do
      post portfolios_url, params: { portfolio: { buying_power: @portfolio.buying_power, description: @portfolio.description, initial_balance: @portfolio.initial_balance, name: @portfolio.name, total_return: @portfolio.total_return, total_return_percentage: @portfolio.total_return_percentage, total_value: @portfolio.total_value } }, as: :json
    end

    assert_response 201
  end

  test "should show portfolio" do
    get portfolio_url(@portfolio), as: :json
    assert_response :success
  end

  test "should update portfolio" do
    patch portfolio_url(@portfolio), params: { portfolio: { buying_power: @portfolio.buying_power, description: @portfolio.description, initial_balance: @portfolio.initial_balance, name: @portfolio.name, total_return: @portfolio.total_return, total_return_percentage: @portfolio.total_return_percentage, total_value: @portfolio.total_value } }, as: :json
    assert_response 200
  end

  test "should destroy portfolio" do
    assert_difference('Portfolio.count', -1) do
      delete portfolio_url(@portfolio), as: :json
    end

    assert_response 204
  end
end
