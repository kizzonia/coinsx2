class AddValuesToDeposits < ActiveRecord::Migration[6.1]
  def change
    add_column :deposits, :confirmed, :boolean
    add_column :deposits, :account_id, :integer
  end
end
