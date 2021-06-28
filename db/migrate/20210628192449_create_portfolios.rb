class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :description
      t.decimal :initial_balance
      t.decimal :total_value
      t.decimal :buying_power
      t.decimal :total_return
      t.decimal :total_return_percentage

      t.timestamps
    end
  end
end
