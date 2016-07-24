class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :content, null: false
  		t.integer :post_id
  		t.integer :user_id
  		t.timestamps(null: false)
  	end
  end
end
