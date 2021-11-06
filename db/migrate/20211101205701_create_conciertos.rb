class CreateConciertos < ActiveRecord::Migration[6.1]
  def change
    create_table :conciertos do |t|
      t.string :lugar
      t.date :fecha_concierto
      t.string :duracion
      t.integer :asistentes
      t.belongs_to :grupo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
