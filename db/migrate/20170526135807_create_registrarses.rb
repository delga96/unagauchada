class CreateRegistrarses < ActiveRecord::Migration
  def change
    create_table :registrarses do |t|
      t.string :nombre
      t.string :apellido
      t.string :mail
      t.string :contraseña
      t.string :telefono
      t.string :foto

      t.timestamps null: false
    end
  end
end
