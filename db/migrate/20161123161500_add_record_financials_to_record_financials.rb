class AddRecordFinancialsToRecordFinancials < ActiveRecord::Migration
  def change
    add_reference :record_financials, :record, index: true, foreign_key: true
    add_reference :record_financials, :financial, index: true, foreign_key: true
  end
end
