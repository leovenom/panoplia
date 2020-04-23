class AddShottIdComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :shott_id, :integer
  end
end
