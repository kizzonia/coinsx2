class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string :title
      t.text :body
      t.string :icon
      t.string :slug

      t.timestamps
    end
    add_index :feedbacks, :slug
  end
end
