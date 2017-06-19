class Vacation < ApplicationRecord

	belongs_to :customer
	validates :vacation_date , :presence => true
	
	scope :sorted , lambda {order("vacations.vacation_date DESC")}
end
