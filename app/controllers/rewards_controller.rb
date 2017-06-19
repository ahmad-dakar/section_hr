class RewardsController < ApplicationController

	layout "new_admin"

	before_action :find_customer
	def new
		@reward = Reward.new({:customer_id => @customer.id})
	end

	def create
		@reward = Reward.new(reward_params)
		if @reward.save
			flash[:notice] = 'تم إضافة المكافأة للعنصر بنجاح'
			redirect_to(:controller => 'customers' , :action => 'show' , :customer_id => @customer.id)
		else
			render('new')
		end
	end

	def delete
		reward = Reward.find(params[:reward_id]).destroy
		flash[:notice] = 'تم حذف المكافأة للعنصر بنجاح'
		redirect_to(:controller => 'customers' , :action => 'show' , :customer_id => @customer.id)
	end

	private 

	def reward_params
		params.require(:reward).permit(:reward_date,  :reward_string , :reason , :note , :customer_id)
	end

	def find_customer
		@customer = Customer.find(params[:customer_id])
	end

end
