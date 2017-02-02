class CreateProductMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :product_markets do |t|
      t.references :product, foreign_key: true
      t.references :market, foreign_key: true

      t.timestamps
    end
  end
end
