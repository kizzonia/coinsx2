class CreateArchives < ActiveRecord::Migration[6.1]
  def change
    create_table :archives do |t|
      t.string :title
      t.string :month
      t.string :year
      t.string :slug
      t.string :archimg

      t.timestamps
    end
    add_index :archives, :slug
  end
end
