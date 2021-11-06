class CreateGrupos < ActiveRecord::Migration[6.1]
  def change
    create_table :grupos do |t|
      t.string :nombre
      t.integer :cantidad_integrantes
      t.date :fecha_debut
      t.string :conformacion

      t.timestamps
    end
  end
end
