class CreateProgressUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :progress_user_tasks do |t|
      t.references :subject_user, foreign_key: true
      t.references :subject_task, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
