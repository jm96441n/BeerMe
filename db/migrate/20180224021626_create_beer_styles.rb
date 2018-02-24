class CreateBeerStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :beer_styles do |t|

      t.timestamps
    end
  end
end
