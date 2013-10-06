class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :username
      t.string :email
      t.string :phone_number
      t.belongs_to :Destination
      
      t.timestamps
    end
  end
end
