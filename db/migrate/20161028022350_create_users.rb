class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :NAME
      t.string :EMAIL
      t.string :PASSWORD
      t.references :PERFIL, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
