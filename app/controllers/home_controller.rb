class HomeController < ApplicationController
  def index
  end

  def resource
    @so = "Hello, this is resource page!"
  end

  def ogranisation
  end

  def what_is_here 
  end

  #A new method for what is here
  def what_sub
    case params[:key]
    when "birds"
      render :bird
    else
      render :what_is_here
    end
  end

  def event
  end

  def contact_us
  end
end
