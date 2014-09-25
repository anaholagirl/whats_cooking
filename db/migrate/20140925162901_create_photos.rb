class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :recipe_id
      t.integer :user_id
    end
  end
end
