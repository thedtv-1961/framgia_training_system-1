class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.integer :duration_type
      t.string :picture

      t.timestamps
    end
  end
end
