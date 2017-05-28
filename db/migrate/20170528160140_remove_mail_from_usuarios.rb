class RemoveMailFromUsuarios < ActiveRecord::Migration
  def change
   remove_column :usuarios, :mail, :string
   add_column :usuarios, :email, :string
   add_index :usuarios, :email
  end
end
