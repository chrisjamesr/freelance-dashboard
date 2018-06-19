class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task_name, :duration, :project, :notes
end
