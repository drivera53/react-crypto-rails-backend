class Portfolio < ApplicationRecord
    has_many :trades
    has_many :coins

    def totalReturnsCalculation
        self.total_return = self.total_value - self.initial_balance
        self.total_return_percentage = ((self.total_value - self.initial_balance)/self.initial_balance) * 100 
        self.save
    end
end
