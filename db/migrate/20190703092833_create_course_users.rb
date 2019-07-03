class CreateCourseUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :course_users do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :status
      t.datetime :date_start
      t.datetime :date_end
      t.integer :role

      t.timestamps
    end

    add_index :course_users, :user_id
    add_index :course_users, :course_id

    add_index :course_users, [:user_id, :course_id], unique: true
  end
end
