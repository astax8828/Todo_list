class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :name_project
      t.string :project_start_date
      t.text :description

      t.timestamps
    end
  end
end
