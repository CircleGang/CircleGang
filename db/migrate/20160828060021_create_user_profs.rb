class CreateUserProfs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profs do |t|
      t.string :name
      t.string :univ
      t.integer :age
      t.integer :gender
      t.text :bio
      t.date :birth
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
