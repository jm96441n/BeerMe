class Styles < ActiveRecord::Migration
  def change
  	create_table :styles do |t|
  		t.string :name, null: false
  		t.belongs_to :category, null: false
  		t.timestamps null: false
  	end
  end
end
