class CreateBreweries < ActiveRecord::Migration[5.1]
  def change
    create_table :breweries do |t|
      t.string :name, null: false
      t.string :phone
      t.string :website
      t.string :description
      t.timestamps
    end
  end
end