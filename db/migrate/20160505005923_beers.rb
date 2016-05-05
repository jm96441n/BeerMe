class Beers < ActiveRecord::Migration
  def change
  	create_table :beers do |t|
  		t.string :name, null: false
  		t.float :abv
  		t.integer :ibu
  		t.text :description
  		t.belongs_to :category, null: false
  		t.belongs_to :brewery, null: false
  		t.belongs_to :style, null: false
  		t.timestamps null: false
  	end
  end
end
