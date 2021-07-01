class Coin < ApplicationRecord
    belongs_to :portfolio

    def fetchCoinUpdatePriceData 
        require 'net/http'
        coin_id = self.coin_id
        url = url = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=#{coin_id}&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=1h"
        request = URI.parse(url)
        response = Net::HTTP.get_response(request)
        crypto_hash = JSON.parse(response.body)
        # Updating Values
        self.symbol = crypto_hash[0]['symbol']
        self.name = crypto_hash[0]['name']
        self.image = crypto_hash[0]['image']
        self.current_price = crypto_hash[0]['current_price']
        self.market_cap = crypto_hash[0]['market_cap']
        self.market_cap_rank = crypto_hash[0]['market_cap_rank']
        self.total_volume = crypto_hash[0]['total_volume']
        self.high_24h = crypto_hash[0]['high_24h']
        self.low_24h = crypto_hash[0]['low_24h']
        self.price_change_24h = crypto_hash[0]['price_change_24h']
        self.price_change_percentage_24h = crypto_hash[0]['price_change_percentage_24h']
        self.market_cap_change_24h = crypto_hash[0]['market_cap_change_24h']
        self.market_cap_change_percentage_24h = crypto_hash[0]['market_cap_change_percentage_24h']
        self.circulating_supply = crypto_hash[0]['circulating_supply']
        self.total_supply = crypto_hash[0]['total_supply']
        self.price_change_percentage_1h_in_currency = crypto_hash[0]['price_change_percentage_1h_in_currency']
        self.save
    end

    def totalReturnsCalculation
        self.total_value = self.quantity * self.current_price
        self.total_return = (self.quantity * self.current_price) - (self.quantity * self.average_cost)
        self.total_return_percentage = ((self.current_price - self.average_cost)/self.average_cost) * 100 
        self.save
    end

    def deleteCoinIfZero
        if self.quantity == 0
            puts("Yeah it's ZEROOOOOOO")
            self.delete
            self.save
        else
            puts("No it's not ZEROOOOOOOOO")
        end
    end
end
