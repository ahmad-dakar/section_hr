class EditVacations < ActiveRecord::Migration[5.0]
  
  def up
  	add_column("vacations" , "reason",:string , :after => 'period' )
  	add_column("vacations" , "type" , :string , :after => 'period')
  end

  def down
  	remove_column("vacations", "type")
  	remove_column("vacations", "reason")
  end
end
