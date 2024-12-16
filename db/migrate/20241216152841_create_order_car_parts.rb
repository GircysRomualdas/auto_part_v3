class CreateOrderCarParts < ActiveRecord::Migration[8.0]
  def change
    create_table :order_car_parts do |t|
      t.references :car_part, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
