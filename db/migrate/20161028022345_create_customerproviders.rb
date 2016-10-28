class CreateCustomerproviders < ActiveRecord::Migration
  def change
    create_table :customerproviders do |t|
      t.string :NAME
      t.string :ADDRESS
      t.string :EMAIL
      t.datetime :BIRTHDAY
      t.string :CPFCNPJ
      t.string :FISOUJUR
      t.string :PHONE1
      t.string :PHONE2
      t.string :CUSPRO

      t.timestamps null: false
    end
  end
end
