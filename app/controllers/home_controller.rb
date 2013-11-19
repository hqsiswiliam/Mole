class HomeController < ApplicationController
  def index
  end

  def resource
    @so = "Hello, this is resource page!"
  end

  def ogranisation
  end

  def what_is_here
    # case params[:key]
    # when "birds"
    #   render :bird
    # else
    #   render :what_is_here
    # end
  end

  #A new method invokes sub dir of what_is_here
  def what_sub
    case params[:key]
    when "birds"
      render :birds
    when "butterflies"
      render :butterflies
    when "fungi"
      render :fungi    
    when "plants"
      render :plants

    else
      render :what_is_here
    end
  end

  def event
  end

  def contact_us
  end
end
