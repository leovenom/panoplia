class ChangeShottToShot < ActiveRecord::Migration[6.0]
  def change
    rename_table :shotts, :shots
  end
end
