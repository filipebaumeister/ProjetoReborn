class AddChavesToProcc < ActiveRecord::Migration
  def change
    add_reference :proccs, :PERFIL, index: true, foreign_key: true
  end
end
