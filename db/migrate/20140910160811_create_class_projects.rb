class CreateClassProjects < ActiveRecord::Migration
  def change
    create_table :class_projects do |t|
      t.string :name
      t.text :description
      t.string :primary_language

      t.timestamps
    end
  end
end
