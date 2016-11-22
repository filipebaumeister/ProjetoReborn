class CreateRecordFinancials < ActiveRecord::Migration
  def change
    create_table :record_financials do |t|
      t.references :FINANCIAL, index: true, foreign_key: true
      t.references :RECORD, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
