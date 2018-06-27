class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :image
      t.text :image_second
      t.text :image_third
      t.integer :price

      t.timestamps
    end
  end
end
