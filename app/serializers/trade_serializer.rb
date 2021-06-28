class TradeSerializer < ActiveModel::Serializer
  attributes :id, :name, :coin_id, :trade_type, :price, :quantity
end
