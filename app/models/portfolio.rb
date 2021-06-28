class Portfolio < ApplicationRecord
    has_many :trades
    has_many :coins
end
