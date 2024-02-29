class AddExtravaluesToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :roi, :float
  end
end
