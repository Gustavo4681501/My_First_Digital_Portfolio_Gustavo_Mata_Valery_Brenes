class AddSkillTypeRefToSkills < ActiveRecord::Migration[7.0]
  def change
    add_reference :skills, :skill_type, null: false, foreign_key: true
  end
end
