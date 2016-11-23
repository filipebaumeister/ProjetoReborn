class AddRecordFinancialToRecord < ActiveRecord::Migration
  def change
    add_reference :records, :financial, index: true, foreign_key: true
  end
end
