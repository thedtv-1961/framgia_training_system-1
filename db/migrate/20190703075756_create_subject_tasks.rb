class CreateSubjectTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_tasks do |t|
      t.references :subject, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
