class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name, null: false
      t.float :abv
      t.integer :ibu
      t.text :description
      t.references :category, null: false
      t.references :brewery, null: false
      t.references :beer_style, null: false
      t.timestamps
    end
  end
end
