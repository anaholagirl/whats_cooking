class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :type_id
      t.integer :recipe_id
    end
  end
end
