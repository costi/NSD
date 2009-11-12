class CreateClickToTalks < ActiveRecord::Migration
  def self.up
    create_table :click_to_talks do |t|
      t.string :phone_number
      t.string :when

      t.timestamps
    end
  end

  def self.down
    drop_table :click_to_talks
  end
end
