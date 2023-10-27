class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :finish_date
      t.string :responsibilities
      t.string :url

      t.timestamps
    end
  end
end
