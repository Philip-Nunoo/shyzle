class SitePagesController < ApplicationController
  def index    
    @transportModes = TransportMode.all    
  end

  def ticket_request
    data = @params
    if data != ""
      # format.html { redirect_to @test, notice: 'Test was successfully created.' }
      redirect_to :controller=>"ticket_request", :action=>"index"
      puts data
      # puts "No Value in params"
      # redirect_to post_url(@post), alert: "Watch it, mister!"
      # redirect_to :controller=>"ticket_request", :action=>"index", alert:"Please log in to access this page."#ticket_request_index_url
    else
      puts "no = redirection"
      redirect_to :action=>"index"
    end
  end
  def about
  end

  def contact
  end
end