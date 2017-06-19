class CreateSanctions < ActiveRecord::Migration[5.0]
  def change
    create_table :sanctions do |t|
    	t.datetime "sanction_date" , :null => false
    	t.string	"sanction_string"
    	t.integer	"customer_id"
      t.timestamps
    end

    add_index("sanctions", "customer_id")
  end
end
