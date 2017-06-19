class Customer < ApplicationRecord

	has_many :vacations
	has_many :rewards
	has_many :sanctions
	has_many :permissions

	validates :first_name , :presence => true , :length => {:maximum => 25}

	validates :last_name , :presence => true , :length => {:maximum => 25}

	validates :father_name , :presence => true , :length => {:maximum => 25}

	validates :mother_name ,  :length => {:maximum => 25}

	validates :identity_number , :presence => true , :length => {:maximum => 25}

	validates :birthday , :presence => true 

	validates :phone , :presence => true 

	validates :mobile , :presence => true 

	validates :temp_place , :presence => true 

	validates :permanent_place , :presence => true 

	

	
	scope :sorted , lambda{order("customers.first_name ASC")}

	def name
		"#{first_name} #{last_name}"
	end


	def self.search(term)
	  if name
	    where('first_name LIKE ?', "%#{term}%")
	  else
	    order("customers.first_name ASC")
	  end
	end

end
