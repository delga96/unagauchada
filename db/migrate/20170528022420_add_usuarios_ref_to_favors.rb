class AddUsuariosRefToFavors < ActiveRecord::Migration
  def change
add_reference :favors, :usuario, foreign_key: true
  end
end
