class AddChavesToFinancial < ActiveRecord::Migration
  def change
    add_reference :financials, :CUSTOMERPROVIDER, index: true, foreign_key: true
    add_reference :financials, :ACCOUNT, index: true, foreign_key: true
    add_reference :financials, :record_financials, index: true, foreign_key: true
  end
end
