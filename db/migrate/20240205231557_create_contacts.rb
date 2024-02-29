class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :body
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
