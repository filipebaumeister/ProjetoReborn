class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.string :NAME

      t.timestamps null: false
    end
  end
end