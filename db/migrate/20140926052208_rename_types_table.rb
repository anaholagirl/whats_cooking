class RenameTypesTable < ActiveRecord::Migration
  def change
    rename_table :types, :groups
  end
end
