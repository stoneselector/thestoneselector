class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :color
      t.integer :lot_number
      t.float :thickness
      t.string :location
      t.integer :quantity
      t.boolean :status, :default => true
      t.string :size
      t.string :slab_number

      t.timestamps
    end
  end
end
