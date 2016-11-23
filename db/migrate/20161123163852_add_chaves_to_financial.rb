class AddChavesToFinancial < ActiveRecord::Migration
  def change
    add_reference :financials, :record, index: true, foreign_key: true
    add_reference :financials, :customerprovider, index: true, foreign_key: true
    add_reference :financials, :account, index: true, foreign_key: true
  end
end
