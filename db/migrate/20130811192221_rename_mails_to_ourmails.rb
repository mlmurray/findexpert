class RenameMailsToOurmails < ActiveRecord::Migration
    def change
        rename_table :mails, :ourmails
    end 
end
