class AddUserShottToShotts < ActiveRecord::Migration[6.0]
  def change
    add_column :shotts, :user_shott, :string
    add_column :shotts, :technique, :text
  end
end
