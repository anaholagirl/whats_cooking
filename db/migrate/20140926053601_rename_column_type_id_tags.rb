class RenameColumnTypeIdTags < ActiveRecord::Migration
  def change
    rename_column :tags, :type_id, :group_id
  end
end
