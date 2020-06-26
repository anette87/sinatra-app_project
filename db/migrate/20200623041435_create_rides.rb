class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :name
      t.string :description
      t.integer :location_id 
    end  
  end
end
