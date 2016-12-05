class CreateRecordFinancials < ActiveRecord::Migration
  def change
    create_table :record_financials do |t|
      t.references :financial, index: true, foreign_key: true
      t.references :record, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
