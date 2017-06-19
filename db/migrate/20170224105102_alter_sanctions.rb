class AlterSanctions < ActiveRecord::Migration[5.0]
  def up
  	add_column("sanctions" , "permission_date",:datetime , :before => 'created_at' )
  	add_column("sanctions" , "permission_string" , :string , :before => 'created_at')
  end

  def down
  	remove_column("sanctions", "permission_string")
  	remove_column("sanctions", "permission_date")
  end
end
