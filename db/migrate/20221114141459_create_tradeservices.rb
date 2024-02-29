class CreateTradeservices < ActiveRecord::Migration[6.1]
  def change
    create_table :tradeservices do |t|
      t.string :title
      t.string :slug
      t.string :icon
      t.string :sub_title
      t.text :body
      t.string :tserviceimg

      t.timestamps
    end
    add_index :tradeservices, :slug
  end
end
