class CreateWorkperiods < ActiveRecord::Migration
  def self.up
    create_table :workperiods do |t|
      t.timestamp :start
      t.timestamp :end
      t.string :message

      t.timestamps
    end
  end

  def self.down
    drop_table :workperiods
  end
end
