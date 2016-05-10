class PlacesController < ApplicationController
  
  def index
    @places = Place.paginate(:page => params[:page], :per_page => 1)
    @background_colors = ["#df494e", "#68a5b7", "#8f978e", "#d8b6ad", "#677b94", "#677b94F", "#66be98", "#fcd06d", "#f8a427", "#d42b14"]
  end
  
  def new
    @place = Place.new
  end
  
end
