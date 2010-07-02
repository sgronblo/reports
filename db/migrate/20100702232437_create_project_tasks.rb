class CreateProjectTasks < ActiveRecord::Migration
  def self.up
    create_table :project_tasks do |t|
      t.string :description
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_tasks
  end
end
