class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.string :NAME
      #t.references :PROCC, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
