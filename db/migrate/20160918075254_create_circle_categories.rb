class CreateCircleCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :circle_categories do |t|
      t.integer :circle_id
      t.integer :category

      t.timestamps
    end
  end
end
