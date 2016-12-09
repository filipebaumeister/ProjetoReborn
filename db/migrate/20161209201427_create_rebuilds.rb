class CreateRebuilds < ActiveRecord::Migration
  def change
    create_table :rebuilds do |t|
      t.references :CAR, index: true, foreign_key: true
      t.decimal :VALUE
      t.text :HISTORY

      t.timestamps null: false
    end
  end
end
