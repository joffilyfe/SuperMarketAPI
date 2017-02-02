class AddValueToProductMarket < ActiveRecord::Migration[5.0]
  def change
    add_column :product_markets, :value, :decimal, default: 0
  end
end
