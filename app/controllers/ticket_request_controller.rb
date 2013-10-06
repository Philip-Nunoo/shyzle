class TicketRequestController < ApplicationController
  def index
    @booking_form = params[:booking]
  end

  def create
    @request = Request.new(request_params)
    
  end
end
