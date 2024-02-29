class CreateFxsignals < ActiveRecord::Migration[6.1]
  def change
    create_table :fxsignals do |t|
      t.string :body
      t.string :entry_point
      t.string :exit_point
      t.string :slug
      t.string :stop_loss
      t.string :sell_point1
      t.string :sell_point2
      t.string :tradetype
      t.string :odds
      t.string :status
      t.string :date
      t.string :pairs
      t.string :leverage
      t.string :call_type
      t.string :exchange
      t.string :sub
      t.string :info
      t.string :archive_id

      t.timestamps
    end
    add_index :fxsignals, :slug
    add_index :fxsignals, :status
  end
end
