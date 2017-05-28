class CreateJointTableCompra < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.string :usuarios
      t.string :creditos
    end
  end
end
