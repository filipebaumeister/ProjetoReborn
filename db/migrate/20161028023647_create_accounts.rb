class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :BANK
      t.string :AGENCY
      t.string :ACCOUNT_CODE

      t.timestamps null: false
    end
  end
end
