class AddCoordinatesToPresidents < ActiveRecord::Migration[7.1]
  def change
    add_column :presidents, :latitude, :float
    add_column :presidents, :longitude, :float
  end
end
