class AddSToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :status, :boolean
  end
end
