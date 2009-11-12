class AddTrackingToClickToTalks < ActiveRecord::Migration
  def self.up
    add_column :click_to_talks, :referer, :string
    add_column :click_to_talks, :ip_address, :string
    add_column :click_to_talks, :user_agent, :string
  end

  def self.down
    remove_column :click_to_talks, :user_agent
    remove_column :click_to_talks, :ip_address
    remove_column :click_to_talks, :referer
  end
end
