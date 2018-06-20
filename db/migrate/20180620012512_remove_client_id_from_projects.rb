class RemoveClientIdFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :client_id, :integer
  end
end
