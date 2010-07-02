class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.integer :user_to_project

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
