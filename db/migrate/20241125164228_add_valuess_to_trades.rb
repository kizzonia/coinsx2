class AddValuessToTrades < ActiveRecord::Migration[6.1]
  def change
    add_column :trades, :plan, :string
    add_column :trades, :enddate, :datetime
    add_column :trades, :goal, :string
    add_column :trades, :bonus, :string
    add_column :trades, :current, :string

  end
end
