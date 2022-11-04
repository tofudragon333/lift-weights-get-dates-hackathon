class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :notes
end
