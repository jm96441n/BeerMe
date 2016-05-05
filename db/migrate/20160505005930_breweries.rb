class Breweries < ActiveRecord::Migration
  def change
  	create_table :breweries do |t|
  		t.string :name, null: false
  		t.string :adress1
  		t.string :address2
  		t.string :city
  		t.string :state
  		t.string :code
  		t.string :country
  		t.string :phone
  		t.string :website
  		t.string :description
  		t.timestamps null: false
  	end
  end
end
