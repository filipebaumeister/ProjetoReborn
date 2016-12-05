class CreateRebuilds < ActiveRecord::Migration
  def change
    create_table :rebuilds do |t|
      t.decimal :VALUE
      t.string :HISTORY

      t.timestamps null: false
    end
  end
end
