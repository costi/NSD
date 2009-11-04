class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :subject
      t.string :phone_number
      t.string :email_address
      t.string :message
      t.string :referer

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
