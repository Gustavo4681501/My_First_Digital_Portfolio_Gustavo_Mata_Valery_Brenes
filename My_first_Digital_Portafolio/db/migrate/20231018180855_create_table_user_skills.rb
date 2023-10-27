class CreateTableUserSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :user_skills, id: false do |t|
      t.belongs_to :users
      t.belongs_to :skills
    end
  end
end
