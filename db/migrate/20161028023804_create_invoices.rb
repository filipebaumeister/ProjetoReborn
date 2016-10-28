class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :DOCUMENT_NUMBER
      t.decimal :VALUE
      t.decimal :DESCOUNT
      t.decimal :ADDITION
      t.references :SALE, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
