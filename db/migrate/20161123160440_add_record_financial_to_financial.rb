class AddRecordFinancialToFinancial < ActiveRecord::Migration
  def change
    add_reference :financials, :record, index: true, foreign_key: true
  end
end
