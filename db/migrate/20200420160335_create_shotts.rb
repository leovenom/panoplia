class CreateShotts < ActiveRecord::Migration[6.0]
  def change
    create_table :shotts do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
