class CreateProccs < ActiveRecord::Migration
  def change
    create_table :proccs do |t|
      t.string :NAME

      t.timestamps null: false
    end
  end
end
