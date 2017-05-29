class AddCosasToUser < ActiveRecord::Migration
  def change
   add_column :users, :nombre, :string
   add_index :users, :nombre
   add_column :users, :apellido, :string
   add_index :users, :apellido
   add_column :users, :telefono, :integer
   add_index :users, :telefono
  end
end
