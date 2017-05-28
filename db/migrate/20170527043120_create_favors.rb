class CreateFavors < ActiveRecord::Migration
  def change
    create_table :favors do |t|
      t.string :titulo
      t.string :descripcion
      t.string :foto
      t.string :ciudad
      t.date :fecha_limite

      t.timestamps null: false
    end
  end
end
