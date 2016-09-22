class RemoveContentToCircles < ActiveRecord::Migration[5.0]
  def change
    remove_column :circles, :content, :string
  end
end
