class CreateCircles < ActiveRecord::Migration[5.0]
  def change
    create_table :circles do |t|
      t.string :name
      t.string :place
      t.text :content
      t.integer :admin_user_id
      t.boolean :bio 

      t.timestamps
    end
  end
end
