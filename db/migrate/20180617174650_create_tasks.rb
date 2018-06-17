class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :project_id 
      t.string :task_name
      t.time :duration
      t.time :counter
      t.date :deadline
      t.timestamps
    end
  end
end
