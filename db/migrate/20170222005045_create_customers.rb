class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string "first_name" , :null => false , :limit => 25
      t.string "last_name" , :null => false , :limit => 25
      t.string "father_name" , :null => false , :limit => 25
      t.string "mother_name"  , :limit => 25
      t.string "identity_number" , :null => false , :limit => 15
      t.datetime "birthday" , :null => false 
      t.string "phone" , :null => false , :array => true 
      t.string "mobile" , :null => false , :limit => 14
      t.string "temp_place" , :null => false , :limit => 100
      t.string "permanent_place" , :null => false , :limit => 100
      t.string "permanent_phone" , :null => false , :limit => 15
      t.boolean "married" , :default => false
      t.integer "children_num" 
 
      t.timestamps
    end
  end
end
