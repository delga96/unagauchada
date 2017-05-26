class CreateModeradors < ActiveRecord::Migration
  def change
    create_table :moderadors do |t|
      t.string :nombre
      t.string :apellido
      t.string :contraseña
      t.string :foto
      t.string :mail
      t.integer :telefono

      t.timestamps null: false
    end
  end
end
