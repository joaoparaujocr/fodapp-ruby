class CreateAdminOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :customer_email
      t.integer :total
      t.string :address
      t.boolean :fullfiled

      t.timestamps
    end
  end
end
