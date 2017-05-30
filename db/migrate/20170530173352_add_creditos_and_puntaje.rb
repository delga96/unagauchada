class AddCreditosAndPuntaje < ActiveRecord::Migration
  def change

   add_column :users, :credito, :integer
   add_index :users, :credito
   add_column :users, :puntaje, :integer
   add_index :users, :puntaje
  end
end
