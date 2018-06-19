class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :projects
end
