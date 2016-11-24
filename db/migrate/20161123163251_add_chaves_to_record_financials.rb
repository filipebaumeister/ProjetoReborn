class AddChavesToRecordFinancials < ActiveRecord::Migration
  def change
    add_reference :record_financials, :RECORD, index: true, foreign_key: true
    add_reference :record_financials, :FINANCIAL, index: true, foreign_key: true
  end
end
