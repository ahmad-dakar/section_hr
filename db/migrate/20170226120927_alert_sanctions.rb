class AlertSanctions < ActiveRecord::Migration[5.0]
  def up
  	add_column('sanctions', 'reason', :string, :before => "customer_id")
  	add_column('sanctions', 'note', :string, :before => "customer_id")
  end
  def down
  	remove_column('sanctions', 'note')
  	remove_column('sanctions', 'reason')
  end
end
