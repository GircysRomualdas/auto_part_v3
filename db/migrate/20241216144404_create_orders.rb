class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.string :customer_email
      t.boolean :fulfilled
      t.decimal :total_price
      t.string :address

      t.timestamps
    end
  end
end
