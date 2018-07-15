class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :location
      t.string :surface
      t.string :duration
      t.text :description
      t.text :image
      t.text :image_second
      t.text :image_third

      t.timestamps
    end
  end
end
