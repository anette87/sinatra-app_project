class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :name
      t.text :location
      t.string :description
    end  
  end
end
