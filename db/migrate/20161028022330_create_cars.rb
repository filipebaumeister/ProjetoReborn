class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :NAME
      t.string :CHASSI
      t.integer :STATUS
      t.date :FABYEAR
      t.date :MODELYEAR
      t.integer :FUEL
      t.float :KM
      t.boolean :NEW
      t.string :COLOREX
      t.string :COLORIN
      t.string :PLATE
      t.integer :TRANSMISSION
      t.decimal :FIPEVALUE
      t.decimal :BUYVALUE
      t.decimal :SELLVALUE
      t.string :SPECS
      t.string :FILIAL
      
      t.timestamps null: false
    end
  end
end
