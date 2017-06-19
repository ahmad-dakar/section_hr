class CreateVacations < ActiveRecord::Migration[5.0]
  def change
    create_table :vacations do |t|

    	t.datetime "vacation_date" , :null => false 
    	t.integer	"period" , :null => false
    	t.string	"note" 
    	t.integer "customer_id"


      t.timestamps
    end

    add_index("vacations", "customer_id")
  end
end
