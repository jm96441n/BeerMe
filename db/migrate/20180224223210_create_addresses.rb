class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|

      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :code
      t.string :country
      t.references :addressable, polymorphic: true
      t.string :type

      t.timestamps
    end

    add_index :addresses, [:addressable_id, :addressable_type]
  end
end
