class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :creator_name, foreign_key: true
      t.string :name_project
      t.datetime :project_start_date
      t.text :description

      t.timestamps
    end
  end
end
