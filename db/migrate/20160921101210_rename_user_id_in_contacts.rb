class RenameUserIdInContacts < ActiveRecord::Migration
  def change
 
  	rename_column :contacts, :user_id_id, :user_id
  	
  end
end
