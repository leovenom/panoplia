class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :shots, :user_shott, :user_shot
    rename_column :comments, :shott_id, :shot_id
  end
end
