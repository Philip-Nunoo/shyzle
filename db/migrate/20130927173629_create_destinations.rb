class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.belongs_to :CompanyName
      t.belongs_to :FromDestination
      t.belongs_to :ToDestination
      
      t.string :price

      t.timestamps
    end
  end
end
