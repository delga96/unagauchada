class CreateCreditos < ActiveRecord::Migration
  def change
    create_table :creditos do |t|
      t.integer :valor

      t.timestamps null: false
    end
  end
end
