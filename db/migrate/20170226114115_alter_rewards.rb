class AlterRewards < ActiveRecord::Migration[5.0]
  def up
  	add_column('rewards', 'reason', :string, :before => "customer_id")
  	add_column('rewards', 'note', :string, :before => "customer_id")
  end
  def down
  	remove_column('rewards', 'note')
  	remove_column('rewards', 'reason')
  end
end
