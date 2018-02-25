class CreateBeerStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :beer_styles do |t|
      t.string :name, null: false
      t.references :category
      t.timestamps
    end
  end
end
