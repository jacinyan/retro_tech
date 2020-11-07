class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.integer :in_stock, :default => 0
      t.integer :quantity, :default => 0
      t.decimal :price, :precision => 10, :scale => 2
      t.text :description

      t.timestamps
    end
  end
end
