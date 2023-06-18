class AddColumnLineFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :line_foods, :count, :integer, null: false, default: 0
    add_column :line_foods, :active, :boolean, null: false, default: false
    add_column :line_foods, :created_at, :datetime, null: false
    add_column :line_foods, :updated_at, :datetime, null: false
    change_table :line_foods do |t|
      t.references :food, null:false, foreign_key: true
      t.references :restaurant, null:false, foreign_key: true
      t.references :order, foreign_key: true
    end
  end
end
