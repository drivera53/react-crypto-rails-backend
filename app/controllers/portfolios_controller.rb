class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :update, :destroy]

  # GET /portfolios
  def index
    @portfolios = Portfolio.all

    render json: @portfolios
  end

  # GET /portfolios/1
  def show
    total_value = @portfolio.buying_power
    @portfolio.coins.each do |coin|
      coin.fetchCoinUpdatePriceData
      coin.totalReturnsCalculation
      total_value = total_value + coin.total_value
    end
    # Handling coin Deletion
    @portfolio.coins.each do |coin|
      coin.deleteCoinIfZero
    end

    @portfolio.total_value = total_value
    @portfolio.totalReturnsCalculation
    if @portfolio.save
      render json: @portfolio
    else
      render json: {error: 'Error fetching Portfolio'}
    end
  end

  # POST /portfolios
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      render json: @portfolio, status: :created, location: @portfolio
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /portfolios/1
  def update
    if @portfolio.update(portfolio_params)
      render json: @portfolio
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /portfolios/1
  def destroy
    @portfolio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_params
      params.require(:portfolio).permit(:name, :description, :initial_balance, :total_value, :buying_power, :total_return, :total_return_percentage)
    end
end
