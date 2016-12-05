class CreateRecordFinancials < ActiveRecord::Migration
  def change
    create_table :record_financials do |t|
      t.references :financials, index: true, foreign_key: true
      t.references :records, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
