class AddEntityIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :entity, null: false, foreign_key: true
  end
end
