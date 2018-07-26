class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :estimated_time, :is_finished, :frequency, :last_completed
end
