class Sanction < ApplicationRecord
	belongs_to :customer


	scope :sorted , lambda {order("sanctions.sanction_date DESC")}
end
