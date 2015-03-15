class RemoveFechaFromPendings < ActiveRecord::Migration
  def change
    remove_column :pendings,:fecha
  end
end
