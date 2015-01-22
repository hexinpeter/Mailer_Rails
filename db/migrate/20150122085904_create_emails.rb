class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :subject
      t.text :body
      t.datetime :date_time
      t.string :recipient

      t.timestamps null: false
    end
  end
end
