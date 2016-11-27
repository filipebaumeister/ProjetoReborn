class AddChavesToRecord < ActiveRecord::Migration
  def change
    add_reference :records, :ACCOUNT, index: true, foreign_key: true
    add_reference :records, :CUSTOMERPROVIDER, index: true, foreign_key: true
    add_reference :records, :CAR, index: true, foreign_key: true
    add_reference :records, :PAYMENT_METHOD, index: true, foreign_key: true
  end
end
