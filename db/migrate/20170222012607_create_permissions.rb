class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
    	t.datetime	"permission_date" , :null => false
    	t.string	"permission_string"
    	t.integer	"customer_id"
      t.timestamps
    end

    add_index("permissions", "customer_id")
  end
end
