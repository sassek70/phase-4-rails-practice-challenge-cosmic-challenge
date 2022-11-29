class ScientistSerializer < ActiveModel::Serializer
  attributes :id, :name, :field_of_study, :avatar

  has_many :missions
  has_many :planets, through: :missions
end
