class CreateReadings < ActiveRecord::Migration[6.0]
  def change
    create_table :readings do |t|
      t.string :sensor
      t.string :value

      t.timestamps
    end
  end
end
