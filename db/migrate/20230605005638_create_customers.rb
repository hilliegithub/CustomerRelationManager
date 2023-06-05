class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :fullname
      t.string :phone_number
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
