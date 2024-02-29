class AddKycvaluesToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :first_name, :string
    add_column :accounts, :last_name, :string
    add_column :accounts, :address, :string
    add_column :accounts, :city, :string
    add_column :accounts, :state, :string
    add_column :accounts, :country, :string
    add_column :accounts, :zip_code, :string
    add_column :accounts, :slug, :string
    add_index :accounts, :slug
    add_column :accounts, :rate, :float
    add_column :accounts, :compound, :boolean
    add_column :accounts, :roi, :float
    add_column :accounts, :currency, :string
    add_column :accounts, :tid, :string
  end
end
