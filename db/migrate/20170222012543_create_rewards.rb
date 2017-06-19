class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
    	t.datetime "reward_date" , :null => false
    	t.string 	"reward_string"
    	t.integer	"customer_id"

      t.timestamps
    end

    add_index("rewards", "customer_id")
  end
end
