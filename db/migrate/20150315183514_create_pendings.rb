class CreatePendings < ActiveRecord::Migration
  def change
    create_table :pendings do |t|
      t.references :client, index: true
      t.references :product, index: true
      t.integer :cantidad
      t.date :fecha
      t.boolean :listo

      t.timestamps
    end
  end
end
