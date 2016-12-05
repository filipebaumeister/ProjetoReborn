class CreatePerfilProcesses < ActiveRecord::Migration
  def change
    create_table :perfil_processes do |t|
      t.references :perfil, index: true, foreign_key: true
      t.references :procc, index: true, foreign_key: true
      t.boolean :ABLE

      t.timestamps null: false
    end
  end
end
