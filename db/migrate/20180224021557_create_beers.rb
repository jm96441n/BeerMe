class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name, null: false, index: true
      t.float :abv
      t.integer :ibu
      t.text :description
      t.references :brewery
      t.references :beer_style
      t.references :category
      t.timestamps
    end
  end
end
