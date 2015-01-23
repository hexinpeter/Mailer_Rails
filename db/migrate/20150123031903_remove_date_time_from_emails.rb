class RemoveDateTimeFromEmails < ActiveRecord::Migration
  def up
    remove_column :emails, :date_time, :datetime
  end

  def down
    add_column :emails, :date_time, :datetime
  end
end
