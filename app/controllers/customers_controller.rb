class CustomersController < ApplicationController
  
  layout "new_admin"
  before_action :find_customer

  def index
  	@customers = Customer.search(params[:term])
  end

  def show
    
    @vacations = @customer.vacations.sorted
    @rewards = @customer.rewards.sorted
    @sanctions = @customer.sanctions.sorted
    @permissions = @customer.permissions.sorted
  end



  def edit
    
  end

  def update
    
    if @customer.update_attributes(customer_params)
      flash[:notice] = 'تم نعديل معلومات العنصر بنجاح'
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end



  def new
    @customer = Customer.new(:temp_place => 'دمشق')
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:notice] = 'تم إضافة عنصر بنجاح'
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def delete
    customer = Customer.find(params[:customer_id]).destroy
    flash[:notice] = 'تم حذف العنصر بنجاح'
    redirect_to(:action => 'index')
  end


  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :father_name,
     :mother_name, :identity_number, :birthday, :phone, :mobile, :temp_place,
      :permanent_place, :permanent_phone, :married, :children_num, :created_at)
  end

  def find_customer
    if params[:customer_id]
      @customer = Customer.find(params[:customer_id])
    end
  end

  
end
