class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :contraseña
      t.string :foto
      t.string :mail
      t.integer :telefono
      t.integer :puntaje
      t.integer :idReputacion

      t.timestamps null: false
    end
  end
end
