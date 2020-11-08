class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.string :steet_number
      t.string :street_name
      t.string :suburb
      t.string :postcode

      t.timestamps
    end
  end
end
