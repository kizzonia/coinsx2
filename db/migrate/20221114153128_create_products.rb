class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sub_title
      t.string :price
      t.string :pimg
      t.string :link
      t.string :slug

      t.timestamps
    end
    add_index :products, :slug
  end
end
