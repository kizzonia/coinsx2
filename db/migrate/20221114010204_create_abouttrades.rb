class CreateAbouttrades < ActiveRecord::Migration[6.1]
  def change
    create_table :abouttrades do |t|
      t.string :title
      t.string :sub_title
      t.text :body
      t.string :link
      t.string :slug
      t.string :icon
      t.string :abouttradeimg

      t.timestamps
    end
    add_index :abouttrades, :slug
  end
end
