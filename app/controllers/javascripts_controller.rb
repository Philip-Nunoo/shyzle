class JavascriptsController < ApplicationController
  def index    
    @data = params[:data]
    puts @data
    respond_to do |format|
      format.html { redirect_to order_home_path }
      format.js
    end
  end
  def dynamic_companies
		@companies = CompanyName.all
	end
	def destination_prices	  
    @destinations = Destination.all
	end
	def destination_to_from_price
    @destination = Destination.find :all,
                              :conditions => 
                                ["FromDestination_id = :FromDestination_id 
                                  and ToDestination_id = :ToDestination_id", params]
	  
	end
	def destination_to_from_company_price
    @destination = Destination.find(:all,
                              :conditions => 
                                ["CompanyName_id = :CompanyName_id 
                                  and FromDestination_id = :FromDestination_id 
                                  and ToDestination_id = :ToDestination_id", params])
	  
	end
end
