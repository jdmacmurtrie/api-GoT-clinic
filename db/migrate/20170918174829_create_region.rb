class CreateRegion < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :weather
      t.string :temperature
    end
  end
end
