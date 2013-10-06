class CreateDepartureTimes < ActiveRecord::Migration
  def change
    create_table :departure_times do |t|
      t.string :departureTime

      t.timestamps
    end
  end
end
