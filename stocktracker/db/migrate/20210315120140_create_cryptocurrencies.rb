class CreateCryptocurrencies < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptocurrencies do |t|
      t.string :name
      t.date :started_at

      t.timestamps
    end
  end
end
