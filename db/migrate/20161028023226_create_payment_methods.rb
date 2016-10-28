class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :NAME
      t.integer :TYPE

      t.timestamps null: false
    end
  end
end
