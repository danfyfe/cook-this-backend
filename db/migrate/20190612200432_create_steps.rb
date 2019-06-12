class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :content
      t.integer :number
      t.integer :recipe_id

      t.timestamps
    end
  end
end
