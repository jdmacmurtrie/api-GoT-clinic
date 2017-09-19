class ChangeCoordinateDataType < ActiveRecord::Migration[5.0]
  def change
    change_table :regions do |t|
      t.change :latitude, :float
      t.change :longitude, :float
    end
  end
end
