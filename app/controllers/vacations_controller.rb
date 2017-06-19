class VacationsController < ApplicationController

	layout "new_admin"

	before_action :find_customer
	def new
		@vacation = Vacation.new({:customer_id => @customer.id})
	end

	def create
		@vacation = Vacation.new(vacation_params)
		if @vacation.save
			flash[:notice] = 'تم إضافة الإجازة للعنصر بنجاح'
			redirect_to(:controller => 'customers' , :action => 'show' , :customer_id => @customer.id)
		else
			render('new')
		end
	end

	def delete
		vacation = Vacation.find(params[:vacation_id]).destroy
		flash[:notice] = 'تم حذف الإجازة للعنصر بنجاح'
		redirect_to(:controller => 'customers' , :action => 'show' , :customer_id => @customer.id)
	end

	private 

	def vacation_params
		params.require(:vacation).permit(:vacation_date, :period, :vacation_type , :reason , :note , :customer_id)
	end

	def find_customer
		@customer = Customer.find(params[:customer_id])
	end

end
