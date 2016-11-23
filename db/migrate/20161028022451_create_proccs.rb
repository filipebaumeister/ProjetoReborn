class CreateProccs < ActiveRecord::Migration
  def change
    create_table :proccs do |t|
      t.string :NAME
      #t.references :PERFIL, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
