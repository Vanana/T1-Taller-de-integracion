class RemoveFechaFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :fecha, :date 
  end
end
