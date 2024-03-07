class AddDinsToHeaders < ActiveRecord::Migration[6.1]
  def change
    add_column :headers, :deposit_title, :string
    add_column :headers, :dins, :string
  end
end
