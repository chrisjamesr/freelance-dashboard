class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.integer :client_id
      t.string :project_name
      t.date :deadline
      t.timestamps
    end
  end
end
