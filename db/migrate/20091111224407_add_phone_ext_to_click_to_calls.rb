class AddPhoneExtToClickToCalls < ActiveRecord::Migration
  def self.up
    add_column :click_to_talks, :phone_ext, :string
  end

  def self.down
    remove_column :click_to_talks, :phone_ext
  end
end
