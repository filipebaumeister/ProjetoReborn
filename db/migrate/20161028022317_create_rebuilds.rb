class CreateRebuilds < ActiveRecord::Migration
  def change
    create_table :rebuilds do |t|
      t.decimal :VALUE
      t.string :HISTORY

      t.references :REBUILDCAR, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
