class CreatePerfilProcesses < ActiveRecord::Migration
  def change
    create_table :perfil_processes do |t|
      #t.references :PERFIL, index: true, foreign_key: true
      #t.references :PROCC, index: true, foreign_key: true
      t.boolean :ABLE

      t.timestamps null: false
    end
  end
end
