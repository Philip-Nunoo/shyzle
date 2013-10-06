class CreateCompanyNames < ActiveRecord::Migration
  def change
    create_table :company_names do |t|
      t.string :name
      t.belongs_to :TransportMode

      t.timestamps
    end
  end
end
