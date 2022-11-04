class WeightHistorySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :weight, :date, :notes
end
