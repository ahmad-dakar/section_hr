class Reward < ApplicationRecord
	belongs_to :customer

	scope :sorted , lambda {order("rewards.reward_date DESC")}
end
