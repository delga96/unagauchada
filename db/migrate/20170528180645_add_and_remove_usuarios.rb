class AddAndRemoveUsuarios < ActiveRecord::Migration
  def change
   remove_column :usuarios, :nombre, :string
   add_column :usuarios, :nombre, :string
   add_index :usuarios, :nombre
remove_column :usuarios, :apellido, :string
   add_column :usuarios, :apellido, :string
   add_index :usuarios, :apellido
remove_column :usuarios, :telefono, :integer
   add_column :usuarios, :telefono, :integer
   add_index :usuarios, :telefono
remove_column :usuarios, :contraseña, :string
  end
end
