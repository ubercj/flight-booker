class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.date :date
      t.integer :duration

      t.references :origin_port, class_name: "Airport"
      t.references :destination_port, class_name: "Airport"

      t.timestamps
    end
  end
end
