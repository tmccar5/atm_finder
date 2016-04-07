class AddLatitudeAndLongitudeToAtm < ActiveRecord::Migration
  def change
    add_column :atms, :latitude, :float
    add_column :atms, :longitude, :float
  end
end
