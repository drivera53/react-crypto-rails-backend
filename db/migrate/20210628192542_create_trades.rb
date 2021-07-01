class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.string :name
      t.string :coin_id
      t.string :trade_type
      t.decimal :price
      t.integer :quantity
      t.integer :portfolio_id
      t.string :symbol
      t.string :image
      t.timestamps
    end
  end
end
