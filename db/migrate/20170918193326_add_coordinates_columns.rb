class AddCoordinatesColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :regions, :latitude, :integer
    add_column :regions, :longitude, :integer
  end
end
