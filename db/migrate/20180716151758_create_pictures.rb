class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.attachment :image
      t.references :project, foreign_key: :project_id
      t.timestamps
    end
  end
end
