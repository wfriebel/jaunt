class CreateLocations < ActiveRecord::Migration
  def change
  	create_table :locations do |t|
  		t.string :name, null: false
  		t.string :description, null: false

  		t.string :type
  		t.timestamps(null: false)
  	end
  end
end
