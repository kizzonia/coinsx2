class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.string :currency
      t.string :deposit
      t.string :expiration
      t.boolean :status
      t.string :tradetype
      t.string :entry
      t.string :rate
      t.string :return

      t.timestamps
    end
  end
end
