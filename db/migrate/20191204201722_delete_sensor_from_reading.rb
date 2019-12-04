class DeleteSensorFromReading < ActiveRecord::Migration[6.0]
  def change
    remove_column :readings, :sensor
  end
end
