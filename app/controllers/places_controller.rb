class PlacesController < ApplicationController
  
  def index
    @places = Place.paginate(:page => params[:page], :per_page => 2)
    @background_colors = ["#df494e", "#68a5b7", "#8f978e", "#d8b6ad", "#677b94", "#66be98", "#fcd06d"]
  end
  
  def new
    @place = Place.new
  end
  
  def create
    Place.create(place_params)
    redirect_to root_path
  end
  
  private
  
  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
  
  def home
    
  end
  
end
