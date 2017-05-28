class AddAvatarToUsuarios < ActiveRecord::Migration
   def up
    add_attachment :usuarios, :avatar
  end
 
  def down
    remove_attachment :usuarios, :avatar
  end
end
