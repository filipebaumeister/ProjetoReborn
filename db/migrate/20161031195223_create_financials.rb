class CreateFinancials < ActiveRecord::Migration
  def change
    create_table :financials do |t|
      t.string :NATURE
      #t.references :CUSTOMERPROVIDER, index: true, foreign_key: true
      t.boolean :PAID
      # t.references :BANK, index: true, foreign_key: true
      t.date :DATE_EMISSION
      t.date :DATE_DUE
      t.date :DATE_PAYMENT
      t.decimal :VALUE
      t.decimal :DISCOUNT
      t.decimal :MULCT
      t.decimal :INTEREST
      t.decimal :VALUE_PAID
      # t.references :RECORD, index: true, foreign_key: true
      t.text :HISTORY

      t.timestamps null: false
    end
  end
end
