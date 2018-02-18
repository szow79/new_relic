class CustomersController < ApplicationController

  def index
    if params[:filter_name].present?
      @customers = Customer.where("first_name LIKE '%#{params[:filter_name]}%'").
                or(Customer.where("last_name LIKE '%#{params[:filter_name]}%'")).
                paginate(:page => params[:page])
    else
      @customers = Customer.all.paginate(:page => params[:page])
    end
    @current_query = params[:filter_name]
    render(:filter)
  end

end
