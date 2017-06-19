class AddIndex < ActiveRecord::Migration[5.0]
  def change
  	add_index("customers", "first_name")
  end
end
