class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :task_id
      t.integer :project_id
      t.text    :content

      t.timestamps
    end
  end
end
