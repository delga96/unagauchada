class ChangeIntegerLimit < ActiveRecord::Migration
  def change
change_column :users, :telefono, :integer, limit: 8
  end
end
