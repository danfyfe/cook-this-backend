class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :favorite_id
      t.string :content
    end
  end
end
