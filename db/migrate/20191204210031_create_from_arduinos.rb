class CreateFromArduinos < ActiveRecord::Migration[6.0]
  def change
    create_table :from_arduinos do |t|
      t.string :value

      t.timestamps
    end
  end
end
