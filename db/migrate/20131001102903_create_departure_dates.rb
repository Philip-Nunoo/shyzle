class CreateDepartureDates < ActiveRecord::Migration
  def change
    create_table :departure_dates do |t|
      t.date :departure
      t.boolean :active
      t.belongs_to :DepartureTime
      
      t.timestamps
    end
  end
end
