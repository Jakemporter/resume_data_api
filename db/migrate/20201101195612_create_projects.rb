class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :screenshot
      t.integer :user_id

      t.timestamps
    end
  end
end
