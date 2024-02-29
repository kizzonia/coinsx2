class CreatePms < ActiveRecord::Migration[6.1]
  def change
    create_table :pms do |t|
      t.string :title
      t.string :walletimg
      t.string :address
      t.string :con

      t.timestamps
    end
  end
end
