class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :start_date
      t.string :end_date
      t.string :degree
      t.string :university_name
      t.text :details
      t.integer :user_id

      t.timestamps
    end
  end
end
