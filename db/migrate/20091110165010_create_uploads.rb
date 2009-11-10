class CreateUploads < ActiveRecord::Migration
  def self.up
    create_table :uploads do |t|
      t.string :original_filename
      t.string :filename
      t.string :content_type
      t.string :company
      t.string :person
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :uploads
  end
end
