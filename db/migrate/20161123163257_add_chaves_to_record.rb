class AddChavesToRecord < ActiveRecord::Migration
  def change
    add_reference :records, :account, index: true, foreign_key: true
    add_reference :records, :customerprovider, index: true, foreign_key: true
    add_reference :records, :car, index: true, foreign_key: true
    add_reference :records, :payment_method, index: true, foreign_key: true
  end
end
