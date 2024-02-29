class AddValuesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :status, :boolean
    add_column :users, :username, :string
    add_column :users, :referal, :string
    add_column :users, :phone, :string
  end
end
