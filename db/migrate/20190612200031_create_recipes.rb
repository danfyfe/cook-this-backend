class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image
      t.string :description
      t.string :prep_time
      t.string :cook_time
      t.string :ready_in_time

      t.timestamps
    end
  end
end
