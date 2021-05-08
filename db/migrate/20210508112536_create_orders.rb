class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :size
      t.integer :custom_size
      t.string :toppings
      t.string :base
      t.string :stuffed_crust
      t.string :sauce
      t.string :cheese
      t.string :sides
      t.string :phone
      t.string :email
      t.string :allergies
      t.string :name
      t.string :address
      t.string :delivery_date

      t.timestamps
    end
  end
end
