class RemoveFechaFromComment < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :fecha, :date 
  end
end
