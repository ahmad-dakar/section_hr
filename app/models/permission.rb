class Permission < ApplicationRecord
	belongs_to :customer

	scope :sorted , lambda {order("permissions.permission_date DESC")}
end
