class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :DATE_EMISSION
      t.references :USER, index: true, foreign_key: true
      t.references :ACCOUNT, index: true, foreign_key: true
      t.string :FINANCIAL_OP_TYPE
      t.decimal :COEF
      t.decimal :VALUE_FINANCED
      t.decimal :QT_PORTION
      t.decimal :VALUE_PORTION
      t.decimal :VALUE_TOTAL?
      t.references :CUSTOMERPROVIDER, index: true, foreign_key: true
      t.references :CAR, index: true, foreign_key: true
      t.references :PAYMENT_METHOD, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
