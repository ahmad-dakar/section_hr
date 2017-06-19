class AlterVacationType < ActiveRecord::Migration[5.0]
  def up
  	rename_column("vacations", "type", "vacation_type")
  end
  def down
  	rename_column("vacations", "vacation_type", "type")
  end
end
