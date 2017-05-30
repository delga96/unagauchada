class AddDefault < ActiveRecord::Migration
  def change
change_column :users, :credito, :integer, :default => 1  
change_column :users, :puntaje, :integer, :default => 0  
end
end
