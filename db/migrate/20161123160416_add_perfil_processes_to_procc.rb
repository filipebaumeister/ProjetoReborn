class AddPerfilProcessesToProcc < ActiveRecord::Migration
  def change
    add_reference :proccs, :perfil, index: true, foreign_key: true
  end
end
