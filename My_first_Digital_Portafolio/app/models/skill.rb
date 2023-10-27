class Skill < ApplicationRecord
  belongs_to :skill_type, foreign_key: 'skill_type_id'
  validates :name, presence: true
end
