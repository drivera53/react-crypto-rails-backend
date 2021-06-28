class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :initial_balance, :total_value, :buying_power, :total_return, :total_return_percentage
end
