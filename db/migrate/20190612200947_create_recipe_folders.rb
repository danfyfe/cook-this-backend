class CreateRecipeFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_folders do |t|
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
