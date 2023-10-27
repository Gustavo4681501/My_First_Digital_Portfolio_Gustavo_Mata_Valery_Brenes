class CreateTableProjectTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :project_technologies, id: false do |t|
      t.belongs_to :projects
      t.belongs_to :technologies
    end
  end
end
