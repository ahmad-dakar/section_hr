class AlertPermissions < ActiveRecord::Migration[5.0]
  def up
  	add_column('permissions', 'reason', :string, :before => "customer_id")
  	add_column('permissions', 'note', :string, :before => "customer_id")
  end
  def down
  	remove_column('permissions', 'note')
  	remove_column('permissions', 'reason')
  end
end
