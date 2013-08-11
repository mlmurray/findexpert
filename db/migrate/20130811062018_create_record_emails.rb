class CreateRecordEmails < ActiveRecord::Migration
  def change
    create_table :record_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
