class CreateToDestinations < ActiveRecord::Migration
  def change
    create_table :to_destinations do |t|
      t.string :name

      t.timestamps
    end
  end
end
