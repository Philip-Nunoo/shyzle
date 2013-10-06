class CreateFromDestinations < ActiveRecord::Migration
  def change
    create_table :from_destinations do |t|
      t.string :name

      t.timestamps
    end
  end
end
