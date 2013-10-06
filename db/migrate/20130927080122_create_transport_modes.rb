class CreateTransportModes < ActiveRecord::Migration
  def change
    create_table :transport_modes do |t|
      t.string :name
      t.timestamps
    end
  end
end
